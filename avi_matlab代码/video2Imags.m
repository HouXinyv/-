function I = video2Imags( videoFilePath )
%UNTITLED5 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
clc;
xyloObj = VideoReader(videoFilePath);
nFrames = xyloObj.NumberOfFrames;
video_imagesPath = fullfile(pwd,'video_images');
if ~exist(video_imagesPath,'dir')
    mkdir(video_imagesPath);
end
files = dir(fullfile(video_imagesPath,'*.jpg'));
if length(files) == nFrames  %���֮ǰ�Ѿ�������ͼƬ���еĻ��Ͳ����ٲ����ˡ�
    I = 0;
    msgbox('֮ǰ���ļ��Ѿ���ȡ���ļ��ˣ�','��ʾ��Ϣ');
    return;
end
h = waitbar(0,'','name','��ȡͼ����Ƶ����');
steps = nFrames;
for step = 1:nFrames
    temp = read(xyloObj,step);%��ȡͼ���е�ĳһ֡�����ĺ���
    tempstr = sprintf('%s\\%03d.jpg',video_imagesPath,step);
    imwrite(temp,tempstr);
    pause(0.01);
    waitbar(step/steps,h,sprintf('�Ѵ���%d%%',round(step/steps*100)));
end
I = 1;
close(h);
end

