function entropy=MIff(f1,f2)
[rf1,cf1]=size(f1);
[rf2,cf2]=size(f2);
entropy=0;
if rf1~=rf2||cf1~=cf2
    return
else
    f=[f1,f2];
    [C,~,IC]=unique(f,'rows');
    for i=1:max(IC)
        pdp=sum(IC==i)*rf1/(sum(f1==C(i,1))*sum(f2==C(i,2)));
        ent=sum(IC==i)/rf1*log(pdp);
        entropy=entropy+ent;
    end
end