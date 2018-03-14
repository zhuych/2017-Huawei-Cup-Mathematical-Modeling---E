function [time] = strategy4( position,des )
%UNTITLED4 此处显示有关此函数的摘要
%   des为一个向量，表示被破坏的道路节点编号

coord=xlsread('data.xls');
S=[1  1  1  1  2  2  2  2   3  3   3   4   4   4   5  5  5   5   5   6  6   6   7   7   8  8  8  8  9  10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32  33  34  35  36  37  38  39  40  41  42  43  44  45  46  47  48  49  50  51  52  53  54  55  56  57  58  59  60  61  62  63  64  65  66  67  68  69 70 70 70 70  71 71 71 71  71  71  72 72 72 72  72  73 73 73  73  74 74 74  74  75 75 75  75  76 76 76  76  77 77 77 77 77  78 78 78 78  79 79 79  80 80 80  81 81 81 81  82 82 82 82  83 83 83 83  84 84 84 84  85 85 86 86 86 86  87 87 87 87  88 88 89 89 89 89 89 89 90 90 90 90 90 91 91 91 91 92 92 92 92 92 93 93 93 93 93 93 94 94 94 94 94 95 95 95 95 95 95 96 96 96 96 96 96 97 97 97 97 97 98 98 98 98 98 99 99 99 99 99 100 100 100 100 100 100 101 101 101 101 101 102 102 102 102 102 103 103 103 103 104 104 104 104 105 105 105 105 105 106 106 106 106 107 107 107 108 108 108 108 108 109 109 109 110 110 110 110 111 111 112 112 112 112 112 112 113 113 113 113 113 114 114 114 114 115 115 115 115 116 116 116 116 116 117 117 117 117 118 118 118 118 118 119 119 120 120 120 120 121 121 121 121 121 122 122 122 123 123 123 123 124 124 124 124 125 125 125 126 126 126 126 127 127 127 127 127 128 128 128 128 129 129 129 129 130 130 130 130];
E=[5  77 78 79 70 71 80 100 72 116 118 119 120 122 1  77 120 125 129 75 105 106 109 112 84 93 94 96 89 89 89 90 90 90 91 92 92 93 93 94 94 95 95 95 95 96 96 97 98 98 99 100 101 102 103 103 104 104 105 105 105 106 106 107 108 108 108 109 112 112 114 115 115 116 116 117 117 118 121 124 124 127 128 128 129 129 130 130 70 2  69 71 115 2  70 72 100 101 116 71 73 3  101 118 72 74 102 117 73 75 104 119 74 76  6  120 75 77 110 120 1  76 78 5  113 1  77 79 113 1  78 114 2  81 100 80 82 89 100 81 83 89 103 82 84 93 105 83 85 8  107 84 86 85 87 97 109 86 88 99 111 87 99 9  10 11 81 82 90 12 13 14 89 91 15 90 92 93 16 17 91 93 94 18 19 8  83 91 92 8  20 21 92 95 22 23 24 25 94 96 26 27 8  95 97 98 28 86 96 98 99 29 30 96 97 99 31 87 88 97 98 2   32  71  80  81  101 33  71  72  100 102 34  73  101 103 104 35  36  82  102 37  38  74  102 6   39  40  41  83  6   42  43  110 44  84  108 45  46  47  107 110 7   48  86  76  106 108 113 87  112 7   49  50  111 113 114 77  78  110 112 114 51  79  112 113 52  53  70  116 54  55  3   71  115 56  57  73  118 3   58  72  117 121 4   74  4   5   75  76  59  118 123 124 127 4   123 125 121 122 126 127 60  61  121 128 5   122 126 123 125 127 129 121 123 126 130 62  63  64  124 130 5   65  66  126 67  68  127 128];
for i=1:length(S)
    distance(i)=((coord(S(i),1)-coord(E(i),1))^2+(coord(S(i),2)-coord(E(i),2))^2)^0.5;
end
%将编号为des的节点去掉，即距离置为inf
for i=1:length(des)
    distance(find(S==des(i)))=inf;
    distance(find(E==des(i)))=inf;
end
timeA=distance/45;
%主干线时间修正
timeA(89)=distance(89)/70;timeA(91)=distance(91)/70;timeA(92)=distance(92)/70;timeA(95)=distance(95)/70;timeA(96)=distance(96)/70;timeA(100)=distance(100)/70;timeA(101)=distance(101)/70;timeA(105)=distance(105)/70;timeA(106)=distance(106)/70;timeA(109)=distance(109)/70;timeA(110)=distance(110)/70;timeA(113)=distance(113)/70;timeA(114)=distance(114)/70;timeA(117)=distance(117)/70;timeA(118)=distance(118)/70;timeA(122)=distance(122)/70;timeA(123)=distance(123)/70;timeA(127)=distance(127)/70;timeA(128)=distance(128)/70;timeA(131)=distance(131)/70;
timeA(134)=distance(134)/70;timeA(136)=distance(136)/70;timeA(137)=distance(137)/70;timeA(140)=distance(140)/70;timeA(141)=distance(141)/70;timeA(144)=distance(144)/70;timeA(145)=distance(145)/70;timeA(148)=distance(148)/70;timeA(149)=distance(149)/70;timeA(152)=distance(152)/70;timeA(153)=distance(153)/70;timeA(154)=distance(154)/70;timeA(155)=distance(155)/70;timeA(158)=distance(158)/70;timeA(159)=distance(159)/70;timeA(162)=distance(162)/70;
timeB=distance/35;
timeB(89)=distance(89)/60;timeB(91)=distance(91)/60;timeB(92)=distance(92)/60;timeB(95)=distance(95)/60;timeB(96)=distance(96)/60;timeB(100)=distance(100)/60;timeB(101)=distance(101)/60;timeB(105)=distance(105)/60;timeB(106)=distance(106)/60;timeB(109)=distance(109)/60;timeB(110)=distance(110)/60;timeB(113)=distance(113)/60;timeB(114)=distance(114)/60;timeB(117)=distance(117)/60;timeB(118)=distance(118)/60;timeB(122)=distance(122)/60;timeB(123)=distance(123)/60;timeB(127)=distance(127)/60;timeB(128)=distance(128)/60;timeB(131)=distance(131)/60;
timeB(134)=distance(134)/60;timeB(136)=distance(136)/60;timeB(137)=distance(137)/60;timeB(140)=distance(140)/60;timeB(141)=distance(141)/60;timeB(144)=distance(144)/60;timeB(145)=distance(145)/60;timeB(148)=distance(148)/60;timeB(149)=distance(149)/60;timeB(152)=distance(152)/60;timeB(153)=distance(153)/60;timeB(154)=distance(154)/60;timeB(155)=distance(155)/60;timeB(158)=distance(158)/60;timeB(159)=distance(159)/60;timeB(162)=distance(162)/60;
timeC=distance/30;
timeC(89)=distance(89)/50;timeC(91)=distance(91)/50;timeC(92)=distance(92)/50;timeC(95)=distance(95)/50;timeC(96)=distance(96)/50;timeC(100)=distance(100)/50;timeC(101)=distance(101)/50;timeC(105)=distance(105)/50;timeC(106)=distance(106)/50;timeC(109)=distance(109)/50;timeC(110)=distance(110)/50;timeC(113)=distance(113)/50;timeC(114)=distance(114)/50;timeC(117)=distance(117)/50;timeC(118)=distance(118)/50;timeC(122)=distance(122)/50;timeC(123)=distance(123)/50;timeC(127)=distance(127)/50;timeC(128)=distance(128)/50;timeC(131)=distance(131)/50;
timeC(134)=distance(134)/50;timeC(136)=distance(136)/50;timeC(137)=distance(137)/50;timeC(140)=distance(140)/50;timeC(141)=distance(141)/50;timeC(144)=distance(144)/50;timeC(145)=distance(145)/50;timeC(148)=distance(148)/50;timeC(149)=distance(149)/50;timeC(152)=distance(152)/50;timeC(153)=distance(153)/50;timeC(154)=distance(154)/50;timeC(155)=distance(155)/50;timeC(158)=distance(158)/50;timeC(159)=distance(159)/50;timeC(162)=distance(162)/50;
GA=sparse(S,E,timeA);
GB=sparse(S,E,timeB);
GC=sparse(S,E,timeC);
for i=1:3
    Dist(i)=graphshortestpath(GA,1,position(i),'Method','Dijkstra');
end
for i=4:6
    Dist(i)=graphshortestpath(GB,1,position(i),'Method','Dijkstra');
end
for i=7:12
    Dist(i)=graphshortestpath(GC,1,position(i),'Method','Dijkstra');
end
for i=13:15
    Dist(i)=graphshortestpath(GA,2,position(i),'Method','Dijkstra');
end
for i=16:18
    Dist(i)=graphshortestpath(GB,2,position(i),'Method','Dijkstra');
end
for i=19:24
    Dist(i)=graphshortestpath(GC,2,position(i),'Method','Dijkstra');
end
time1=sum(Dist(1:24));
for j=1:6
for i=1:3
    Dist0(j,i)=graphshortestpath(GA,j+2,position(i),'Method','Dijkstra');
    Dist1(j,i)=graphshortestpath(GA,j+2,position(i+24),'Method','Dijkstra');
    Dist2(j,i)=Dist0(j,i)+Dist1(j,i);
end
for i=4:6
    Dist0(j,i)=graphshortestpath(GB,j+2,position(i),'Method','Dijkstra');
    Dist1(j,i)=graphshortestpath(GB,j+2,position(i+24),'Method','Dijkstra');
    Dist2(j,i)=Dist0(j,i)+Dist1(j,i);
end
for i=7:12
    Dist0(j,i)=graphshortestpath(GC,j+2,position(i),'Method','Dijkstra');
    Dist1(j,i)=graphshortestpath(GC,j+2,position(i+24),'Method','Dijkstra');
    Dist2(j,i)=Dist0(j,i)+Dist1(j,i);
end
for i=13:15
    Dist0(j,i)=graphshortestpath(GA,j+2,position(i),'Method','Dijkstra');
    Dist1(j,i)=graphshortestpath(GA,j+2,position(i+24),'Method','Dijkstra');
    Dist2(j,i)=Dist0(j,i)+Dist1(j,i);
end
for i=16:18
    Dist0(j,i)=graphshortestpath(GB,j+2,position(i),'Method','Dijkstra');
    Dist1(j,i)=graphshortestpath(GB,j+2,position(i+24),'Method','Dijkstra');
    Dist2(j,i)=Dist0(j,i)+Dist1(j,i);
end
for i=19:24
    Dist0(j,i)=graphshortestpath(GC,j+2,position(i),'Method','Dijkstra');
    Dist1(j,i)=graphshortestpath(GC,j+2,position(i+24),'Method','Dijkstra');
    Dist2(j,i)=Dist0(j,i)+Dist1(j,i);
end
end

[time0,Znum]=min(Dist2);
Z1=find(Znum==1);   %去Z1装载的车编号,可为空
Z2=find(Znum==2);   %去Z2装载的车编号
Z3=find(Znum==3);   %去Z3装载的车编号
Z4=find(Znum==4);   %去Z4装载的车编号
Z5=find(Znum==5);   %去Z5装载的车编号
Z6=find(Znum==6);   %去Z6装载的车编号
timemax=max(time0)+1/6;   %假设通过合理优化，耗时最长的车装载时无须排队
time2=24*timemax;
if (length(Z1)==1)
    time2=time2-timemax+time0(Z1(1)); 
elseif(length(Z1)>=2)
    dist0=sort(Dist0(1,Z1));
    dist1=sort(Dist1(1,Z1));
    time2=time2-2*timemax+dist0(1)+dist0(2)+dist1(1)+dist1(2);
    for i=3:length(Z1)
        time2=time2+max(dist0(i)+dist1(length(Z1)+3-i)-timemax,0);
    end
else
end
if (length(Z2)==1)
   time2=time2-timemax+time0(Z2(1)); 
elseif(length(Z2)>=2)
    dist0=sort(Dist0(2,Z2));
    dist1=sort(Dist1(2,Z2));
    time2=time2-2*timemax+dist0(1)+dist0(2)+dist1(1)+dist1(2);
    for i=3:length(Z2)
        time2=time2+max(dist0(i)+dist1(length(Z2)+3-i)-timemax,0);
    end
else
end
if (length(Z3)==1)
    time2=time2-timemax+time0(Z3(1)); 
elseif(length(Z3)>=2)
    dist0=sort(Dist0(3,Z3));
    dist1=sort(Dist1(3,Z3));
    time2=time2-2*timemax+dist0(1)+dist0(2)+dist1(1)+dist1(2);
    for i=3:length(Z3)
        time2=time2+max(dist0(i)+dist1(length(Z3)+3-i)-timemax,0);
    end
else
end
if (length(Z4)==1)
    time2=time2-timemax+time0(Z4(1)); 
elseif(length(Z4)>=2)
    dist0=sort(Dist0(4,Z4));
    dist1=sort(Dist1(4,Z4));
    time2=time2-2*timemax+dist0(1)+dist0(2)+dist1(1)+dist1(2);
    for i=3:length(Z4)
        time2=time2+max(dist0(i)+dist1(length(Z4)+3-i)-timemax,0);
    end
else
end
if (length(Z5)==1)
    time2=time2-timemax+time0(Z5(1)); 
elseif(length(Z5)>=2)
    dist0=sort(Dist0(5,Z5));
    dist1=sort(Dist1(5,Z5));
    time2=time2-2*timemax+dist0(1)+dist0(2)+dist1(1)+dist1(2);
    for i=3:length(Z5)
        time2=time2+max(dist0(i)+dist1(length(Z5)+3-i)-timemax,0);
    end
else
end
if (length(Z6)==1)
    time2=time2-timemax+time0(Z6(1)); 
elseif(length(Z6)>=2)
    dist0=sort(Dist0(6,Z6));
    dist1=sort(Dist1(6,Z6));
    time2=time2-2*timemax+dist0(1)+dist0(2)+dist1(1)+dist1(2);
    for i=3:length(Z6)
        time2=time2+max(dist0(i)+dist1(length(Z6)+3-i)-timemax,0);
    end
else
end
time=time1+time2;
end


