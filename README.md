# 📄 **YOLOv8 Video Object Detection**

- This project demonstrates real-time object detection on videos using YOLOv8.
It is based on the Ultralytics YOLOv5 repository, with a custom Windows batch script (yolo.bat) for quick setup and inference.

# 📂 **Project Structure**
```
yolov5/
├── data/
│   ├── videos/           # Place your input videos here
├── yolovenv/             # Virtual environment (auto-created)
├── yolo.bat              # Batch script to run YOLO
├── train.py              # Training script (from YOLOv5 repo)
├── detect.py             # Detection script (from YOLOv5 repo)
├── requirements.txt      # Dependencies
```
# ⚙️ **Setup**

- Clone the repository
  
  ```
  git clone https://github.com/ultralytics/yolov5.git
  cd yolov5
- Place your video files inside data/videos/. Example: data/videos/myvideo.mp4
- Edit yolo.bat to point to your video:
  
  ```
  yolo detect predict model=yolov8n.pt source="data/videos/myvideo.mp4"

# ▶️ **Usage**

Simply double-click yolo.bat.
The script will:

  - Check if a Python virtual environment exists (creates one if missing).
  - Install dependencies from requirements.txt (only the first run).
  - Run YOLOv8 detection on your chosen video.

# 📊 **Output**

- Results (annotated video + detection logs) are saved automatically in:
  - runs/detect/exp/
- Each new run creates a new folder: exp2, exp3, etc.

# 🔑 **Key Features**

- One-click execution with yolo.bat.
- Automatic setup of virtual environment.
- Dependency installation only when needed.
- Easy to swap input videos by placing them in data/videos/ and editing the .bat file.

# 📌 **Notes**

- Default model used: yolov8n.pt (lightweight YOLOv8 Nano).
- You can replace it with other YOLOv8 models (yolov8s.pt, yolov8m.pt, etc.) for better accuracy.

# 📚 **References**
- Ultralytics YOLOv5 GitHub
- YOLOv8 Documentation
