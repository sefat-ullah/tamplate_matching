Folder = 'D:\NDUB\Pattern Recognition\MATlab offline task\Tamplate matching\Images';
vid=VideoReader('input.MOV');
  numFrames = vid.NumberOfFrames;
  n=numFrames;

%for iFrame = 1:n
%  frames = read(vid, iFrame);
%  imwrite(frames, fullfile(Folder, sprintf('%06d.jpg', iFrame)));
%end
FileList = dir(fullfile(Folder, '*.jpg'));
for iFile = 1:length(FileList)
  aFile = fullfile(Folder, FileList(iFile).name);
  img   = imread(aFile);
end
ds = imageDatastore(aFile);
a = read(ds);
imshow(a);