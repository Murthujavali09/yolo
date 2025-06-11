@echo off
REM Check if virtual environment exists
IF NOT EXIST yolovenv\Scripts\activate.bat (
    echo Creating virtual environment...
    python -m venv yolovenv
)

REM Activate virtual environment
call yolovenv\Scripts\activate.bat

REM Install dependencies if not already installed
IF NOT EXIST yolovenv\Lib\site-packages\ultralytics (
    echo Installing dependencies from requirements.txt...
    pip install -r requirements.txt
)

REM Run YOLOv8 detection
cd yolov5
yolo detect predict model=yolov8n.pt source="data/videos/s2.mp4"
cd ..

pause
