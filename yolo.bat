@echo off
call yolovenv\Scripts\activate.bat
cd yolov5
yolo detect predict model=yolov8n.pt source="data/videos/s2.mp4"
pause
