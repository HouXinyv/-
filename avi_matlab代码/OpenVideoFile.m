function filePath = OpenVideoFile()
%�öԻ�����ļ�
%   ����Ƶ�ļ�
%   videoFilePath = fullfile(pwd,aviName);
[filename pathname filterindex] = uigetfile(...
    {'*.avi','��Ƶ�ļ�(*.avi)';...
    '*.mpeg','��Ƶ�ļ�(*.mpeg)';...
    '*.*','�����ļ�(*.*)'},...
    'ѡ����Ƶ�ļ�','MultiSelect','off',...
    pwd);
filePath = 0;
if isequal(filename,0)||isequal(pathname,0) %ֻҪ�������ʾ���ػ�û�к��ʵ��ļ�ʱ��
    return;
end
filePath = fullfile(pathname,filename);
end

