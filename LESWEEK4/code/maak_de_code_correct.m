% function enablesubfunctions
% the above line should be uncommented only when subfunctions are used
%% SCRIPTFILE : name of the file
%
% calculate kinematics 
%
% Name:  Bart van Trigt 
% 
% DATE : 31 oktober 2017
%
 
clc; clear all; close all;
load assignment3.mat

position= 1
if position===1
    antwoord='goed'
else
    antwoord= 'fout'
end

% ##########################
%% Question 3.1 
% ##########################

model.segment.humerus.rotmat=mayo.k4_r.elbowflexion.trial1.humerus.rotmat;
model.segment.humerus.position=mayo.k4_r.elbowflexion.trial1.humerus.position;
% vector= [1 2 3] +  [4 5 6]
vector = [1 2 3] +
model.segment.ulna.rotmat=mayo.k4_r.elbowflexion.trial1.ulna.rotmat;
model.segment.ulna.position=mayo.k4_r.elbowflexion.trial1.ulna.position;

create=mayo.k1_r.refdata.scapula.position(1:,3);
% for k = 1:length(model.segment.humerus.rotmat)
% model.joint.elbow.rotmat(:,:,k)=inv(model.segment.humerus.rotmat(:,:,k))*model.segment.ulna.rotmat(:,:,k);
% model.joint.elbow.angle(:,:,k)=RotationMatrixToCardanicAngles(model.joint.elbow.rotmat(:,:,k),[1 2 3]); %decompostion matrix checken
% end
% 
% plot(squeeze(model.joint.elbow.angle(:,3,:)))
figure;
drawnow
plot3 (model.segment.humerus.position(1,:), model.segment.humerus.position(2,:), model.segment.humerus.position(3,:),'ro')
hold on
plot3 (model.segment.ulna.position(1,:), model.segment.ulna.position(2,:), model.segment.ulna.position(3,:),'o')
axis equal
xlabel 'x-axis'
ylabel 'y-axis'
zlabel 'z-axis



% ##########################
%% Question 3.2
% ##########################

for k = 1:length(model.segment.humerus.rotmat)
model.segment.ulna.position_tovhumerus(:,k)= inv(model.segment.humerus.rotmat(:,:,k))*(model.segment.ulna.position(:,k)-model.segment.humerus.position(:,k));
end

fs=10;
dt=1/fs;
for j = 1:length(model.segment.ulna.position_tovhumerus)-1
model.segment.ulna.linearvelocity.diff(:,j)=(model.segment.ulna.position_tovhumerus(:,j+1)-model.segment.ulna.position_tovhumerus(:,j))/dt;
end

Tibia=[4     3     2     4     9     3     1     5     2     5     1     8     4     6     7     7     8     4     1];
Fibula=[4     3     2     4     9     3     1     5     2     5     1     8     4     6     7     7     8     4     1]];

calculate_Tibia_Fibula=Tibia*Fibula;

figure;
plot(model.segment.ulna.linearvelocity.diff(1,:),'b')
hold on
plot(model.segment.ulna.linearvelocity.diff(2,:),'g')
plot(model.segment.ulna.linearvelocity.diff(3,:),'r')



% end
%=============================================================
%% SUBFUNCTIONS

% you must copy ALL of your own function files here,
% once you have completed your assignment, prior to handing it in.
% NB do not forget to uncomment line 1 !
% 
%function myownplot(figno,array)
% values of the gastrocnemius: 39    39    29    18    13     2    76    51    73    77

gastrocnemius = [39    39    29    18    13     2    76    51    73    77);

% values of the soleus: 27  20     7    43    71    98    56     5    59 8
soleus= [27    20     7    43    71    98    56     5    59   ];

Calculate_gastroc_soleus= gastrocnemius.*soleus;


%figure(figno)
%plot(array)
%title(['EXAMPLE ', num2str(figno)])
%end
