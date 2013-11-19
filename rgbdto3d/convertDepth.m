%% convert mat depth map to text data file

data_dir = 'F:\test\NewlyAlignedRGB_mug\NewlyAlignedRGB_mug\';

start_id = 151;
end_id = 211;

imgw = 640;
imgh = 480;


for i=start_id:end_id
    
    % load depth image
    cur_dfile = [data_dir num2str(i) '_depth.mat'];
    cur_dmap = load(cur_dfile);
    cur_dmap = cur_dmap.refinedDepth;
    
    % output to text file
    save_dfile = [data_dir num2str(i) '_depth.txt'];
    save(save_dfile, 'cur_dmap', '-ascii');
    
    disp(['Finish ' num2str(i)]);
    
end
