import cv2

cv2.namedWindow("USB Cam")
cam = cv2.VideoCapture('/dev/video2')
if cam.isOpened():
    rval, frame = cam.read()
else:
    rval = False

while rval:
    rval, frame = cam.read()

    cv2.imshow("USB Cam", frame)

    key = cv2.waitKey(20)
    if key == 27:  # exit on ESC
        break

if cam.isOpened():
    cam.release()
cv2.destroyWindow("USB Cam")