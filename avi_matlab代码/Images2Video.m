function Images2Video( imagesfolder,videofilename )
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
% ��imagesfolder�ļ����е�.jpg�ļ������Ƶ�浽�ļ��е�ַΪvideofilename���ļ���
startFrame = 1;%��ʼ֡
endFrame = size(ls(fullfile(imagesfolder,'*.jpg')),1);
hwrite = VideoWriter(videofilename);
hwrite.FrameRate = 34;%����֡��
open(hwrite);
hwaitbar = waitbar(0,'','name','������Ƶ�ļ�...');
steps = endFrame - startFrame;
for i = startFrame:endFrame
    imagFile = sprintf('%03d.jpg',i);
    imagFile = fullfile(imagesfolder,imagFile);
    imagFrame = imread(imagFile);
    imagFrame = im2frame(imagFrame);
    writeVideo(hwrite,imagFrame);
    pause(0.01);
    step = i - startFrame;
    waitbar(step/steps,hwaitbar,sprintf('�Ѵ���%d%%',round(step/steps*100)));
end
close(hwrite);
close(hwaitbar);

end

