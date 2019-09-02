myvid = VideoReader('input.MOV');
numFrames = 0;
frameCell = cell([],1);
while hasFrame(myvid)
    F = readFrame(myvid);    
    numFrames = numFrames + 1;
    frameCell{numFrames} = F ;
    %imagesc(F)
    %drawnow
end
disp(numFrames);
prompt = 'Enter Frame number:- ';
x = input(prompt);
A = imread('C:\Users\Sefat\Pictures\vlcsnap-2019-02-01-21h54m01s121.png');
figure, imshow(cell2mat(frameCell(1 , x)));
figure, imshow(A);