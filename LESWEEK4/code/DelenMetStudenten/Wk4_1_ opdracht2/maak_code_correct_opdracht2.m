clear;clc;close all;

%% HOW TO USE THIS PROGRAM
%Select the right channelname

%% first set this script to the correct paths.

%% load raw data and events 

Session_name            = "participant"; 
dirname                 = [Session_name,'/'];
settings.file_prefix    = [Session_name,'_'];
EMG                     = 'EMG_;
filt                    = 0; %1 is filt 0 is no filt
events                  = 'Events_';
extension               = '.mat';

filename_EMG=[ Session_name '/' EMG Session_name extension ];
filename_Events=[ Session_name '/' events Session_name extension ];



%% select trial
tril=3;


%% extract grf and emgdata

% filename2='analogdata2_trial22';
load(filename_EMG);

if filt=1
    emgdata=EMG;
else
    emgdata=emgdata;
end

data=emgdata{1,trial};
% data=emgdata;


%% Channel labels
% load(filename2);

% for participant 1-12

ChannelLabels(1).name='LLO';ChannelLabels(2).name='RLO';ChannelLabels(3).name='LIC';ChannelLabels(4).name='RIC;
ChannelLabels(5).name='LRA';ChannelLabels(6).name='RRA';ChannelLabels(7).name='UpTA';ChannelLabels(8).name='LowTA';
ChannelLabels(9).name='empty';ChannelLabels(10).name='empty';ChannelLabels(11).name='LOI';ChannelLabels(12).name='ROI';
ChannelLabels(13).name='LOE';ChannelLabels(14).name='ROE';ChannelLabels(15).name='LMU';ChannelLabels(16).name='RMU';ChannelLabels(17).name='LTrA';ChannelLabels(18).name='RTrA';


%for participant 13-end
% ChannelLabels(1).name='LLO';ChannelLabels(2).name='RLO';ChannelLabels(3).name='LIC';ChannelLabels(4).name='RIC';
% ChannelLabels(5).name='LRA';ChannelLabels(6).name='RRA';ChannelLabels(7).name='LOE';ChannelLabels(8).name='ROE';
% ChannelLabels(9).name='empty';ChannelLabels(10).name='empty';ChannelLabels(11).name='LOI';ChannelLabels(12).name='ROI';
% ChannelLabels(13).name='RMU';ChannelLabels(14).name='UpTA';ChannelLabels(15).name='LMU';ChannelLabels(16).name='LowTA';ChannelLabels(17).name='LTrA';ChannelLabels(18).name='RTrA';



%% load events 

load(filename_Events)

figure;
plot(data(30000:60000,3),'LineWidth',2);
xlabel('Time (s)')
ylabel('Potential difference (uv)')
axis([0 30000 -2 2])

%% -----> filter data 
fs=5000;
%low pass filtered with cutoff frequency=500Hz
fc=[10 500];
wn=fc/(fs/2);
[B, A]=butter(2,wn,'bandpass'); %high pass filtered with cutoff frequency=3Hz
[data_filt]=filtfilt(B,A,data);

figure;
plot(data_filt(30000:60000,3),'LineWidth',2);
xlabel('Time (s)')
ylabel('Potential difference (uv)')


axis([0 30000 -2 2])
%removal of 50,100,150 Hz etc.
f0=50;
for k=2:9 
    [B,A]=butter(1,((k*f0+[-1,1])/(fs/2)),'stop');
    data_filt=filtfilt(B,A,data_filt);
end

N=length(data(:,1));
dt = 1/fs; %Tijd tussen samples (1/frequentie)
k = 0:N-1;  %Correctie voor index
t = k*dt;  %Tijdas

%% =============================
%       
% for i_step=1:(length(lhs)-1)
%     
%     data_step=data_filt_after(lhs(i_step):lhs(i_step+1),13);
% %     data_step(numel(data_step))=0;
%     
%     figure(1);
%     hold on
%     plot(data_step)
%     
% end
% 
% 
% 
% for i_step=1:length(lhs)
%     
%     for i_muscle=1:length(data_filt_after)
% data_step.muscle(i_step)=data_filt_after(lhs(i_step):rto(i_step),i_muscle);
%     end
%     
%    figure(2);
%     hold on
%     plot(data_step)
% 
% end
% 
% keyboard 
% 
% 
% %% under construction
% [power,frequency]=pwelch(data_filt_after, fs, [],fs,fs);
% [powerh, frequencyh]=pwelch(hilbertm,fs,[],fs,fs);
% 
%    f  = eval([ 'fft(data_filt_after, 1001)/length(t)' ]);
%     hz = linspace(0,fs/2,2000/2+1);
%     bar(hz,abs(f(1:length(hz))*2))
% 
% for i_muscle=1:length(data_rect(1,:))
%     figure(2)
%     subplot(4,4,i_muscle);
%     plot(frequency,power(:,i_muscle))
%     hold on 
%     
%     subplot(4,4,i_muscle);
%     plot(frequencyh,powerh(:,i_muscle))
%     
%     subplot(4,4,i_muscle);
%     bar(hz,abs(f(1:length(hz))*2))
%     
%     axis([0 100 0 0.1 ])
%     legend(ChannelLabels(1,i_muscle));  
% end
% 
% % nfft=1000;
% % noverlap=500;
% % 
% % [Cxy, F]=mscohere(hilbertm(:,3),hilbertm(:,4),hanning(nfft),noverlap,nfft,fs)
% % figure(3);
% % hold on
% % plot(F,Cxy,'g')
% 
% 

%% ----> Rectify data with abs or  hilbert?

hilbertm=hilbert(data_filt);
data_rect=abs(data_filt);

%% -----> filter data for visualization of EMG data
fs=5000;
fc=10;
wn=fc/(fs/2));
[B, A]=butter(2,wn,'low',); %low pass filtered with cutoff frequency=10Hz
[data_filt_after]=filtfilt(B,A,data_rect);
[data_filt_after_hilbert]=filtfilt(B,A,hilbertm);

% data_filt_after=data_rect;
% data_filt_after_hilbert=hilbertm;

%% ------- Devide in steps-------- 
lhs=events{1,trial}.lhs;
rto=events{1,trial}.rto;
rhs=events{1,trial}.rhs;
lto=events{1,trial}.lto;

mean_lhs=mean(lhs);
mean_rto=mean(rto);
mean_rhs=mean(rhs);
mean_lto=mean(lto);



%% plot data time normalized

[normalized_rto, normalized_rhs, normalized_lto ] = timenormalized_events(lhs,rto,rhs,lto );

stridetime=zeros(1,length(lhs)-1);

% for i=1:16;
% data.muscles(i).stride=zeros(length(lhs)-1,101);
% end

for i_muscle=1:length(data_filt_after(1,:))
    for i_stride=1:(length(lhs)-1)
    
    stride=data_filt_after(lhs(i_stride):lhs(i_stride+1),i_muscle); % <-- from lhs to next lhs
    stridetime(i_stride)=length(stride); % <----------------------------------------------- To calculate stride time variability
    
    % Time normalization
   
     strides{1,i_muscle}(i_stride,:)=stridetime(i_stride);
    end
end




%% calculate the snr
percentage=[6 31 56 81];



figure;

load handel
sound(y,Fs)

% figure;
% 
% subplot(311)
% bar(frequency,10*log10(power(:,13)))
% subplot(313)
% plot(frequency,10*log10(power(:,13)),'g')
% 
% 
%    
% 
% 
% keyboard
% 
% 
% figure(10)
% plot(frequency,power)
% % Exercise 2: raw data
% % figure(2)
% % hold on
% % subplot(2,2,i)
% % plot(data)
% % % eval(['title(','typing',num2str(i),')'])
% % set(gcf,'NumberTitle','off')
% % set(gcf,'Name','Raw EMG')
% 
% 
% % Exercise 3: powerspectra
% [power,frequency]=pwelch(data, fs, round(0.9*fs),fs,fs);
% 
% figure(10)
% plot(frequency,power)
% 
% % figure(3)
% % hold on
% % subplot(2,2,i)
% % plot(frequency,power)
% % title(num2str(i))
% 
% % Exercise 4: removal of contamination
% data_correct=cleanEMG(data,fs);
%  
% data_clean=abs(data_correct);
% fc=2;
% wm=fc/(fs/2);
% [B, A]=butter(2,wn,'low'); %low pass filtered with cutoff frequency=3Hz
% [data_clean]=filtfilt(B,A,data_correct);
% 
% [power,frequency]=pwelch(data_correct, fs, round(0.9*fs),fs,fs);
% 
% figure(10)
% plot(frequency,power)
% 
%     
% figure(1)
% hold on
% subplot(2,2,i)
% plot(data_clean,'r')
% axis([3000 13000 0 700])%10 seconds
% title(num2str(i))
% 
% % Exercise 5: normalization 
% load('MVC.mat')
% 
% % Normalize to max
% data_norm_max=(data_clean/MVC.max)*100;
% 
% figure(4)
% hold on
% subplot(2,2,i)
% plot(data_norm_max)
% axis([3000 13000 0 10])%10 seconds
% title(num2str(i))
% 
% % Normalize to mean
% data_norm_mean=(data_clean/MVC.mean)*100;
% 
% figure(4)
% hold on
% subplot(2,2,i)
% plot(data_norm_mean,'r')
% axis([3000 13000 0 10])%10 seconds
% title(num2str(i))
% legend('Normalized to maximum','Normalized to mean')
% 

% save(figure ,.jpg