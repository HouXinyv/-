function videoPath = OutputVideoFile( )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
folderNameOut = fullfile(pwd,'video_out');
if ~exist(folderNameOut,'dir')
    mkdir(folderNameOut);
end
videoFilePath = fullfile(folderNameOut,'Out.avi');
[videofilename , videofoldername,~] = uiputfile({'*.avi','VideoFile(*.avi)';'*.wmv','VideoFile(*.wmv)';'*.*','All Files(*.*)'},'VideoFile',videoFilePath);
videoPath = 0;
if isequal(videofilename,0)||isequal(videofoldername,0)
    return;
end
videoPath = fullfile(videofoldername,videofilename);
end

