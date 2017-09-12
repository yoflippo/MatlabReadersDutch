for i = 1:8
    data = load(['proefpersoon' num2str(i) '.mat']);
    c = data.coordinaten;
    h(i) = acos( (norm(c(1,:)-c(2,:))^2+norm(c(2,:)-c(3,:))^2-...
       norm(c(1,:)-c(3,:))^2)/(2*norm(c(1,:)-c(2,:))*norm(c(1,:)-c(3,:))));
end
