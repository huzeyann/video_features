find /home/huze/Algonauts_2021_data/raw/AlgonautsVideos268_All_30fpsmax/ -name '*.mp4' > path.txt
python main.py \
 --feature_type my \
 --file_with_video_paths path.txt \
 --device_ids 0 \
 --tmp_path /tmp \
 --on_extraction save_numpy \
 --output_path ./output \
 --extraction_fps 22 \
 --streams flow \
 --flow_type raft

mkdir /home/huze/Algonauts_2021_data/precomputed_flow
rsync -avzP ./output/my/* /home/huze/Algonauts_2021_data/precomputed_flow/
