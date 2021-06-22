clear; clc; close all;

a=readtable('seoul.xlsx');

name=a.Properties.VariableNames;

n=size(name',1);
loca=zeros(n,4);

for ik=1:n
    k=name(ik);
    k=cell2mat(k);
    k=eraseBetween(k,1,1);
    k=erase(k,'_');
    b1=eraseBetween(k,9,17);
    b2=eraseBetween(k,1,8);
    b1=str2double(b1);
    b2=str2double(b2);
    b1=b1*10^(-6);
    b2=b2*10^(-6);
    loca(ik,1)=ik;
    loca(ik,2)=b1;
    loca(ik,3)=b2;
end

for ik=1:24
    for it=1:n        
        t=a(ik,it);
        t=table2array(t);
        loca(it,4)=t;
    end   
    title=sprintf('Hour_%2.2d',ik);
    xlswrite(title,loca);   
end  