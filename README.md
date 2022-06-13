## การติดตั้ง sdk 

นำ code ชุดนี้ไปไว้ในไฟล์ pubspec.yaml

```
fido_revocation_sdk:
    git:
      url: https://github.com/rstthailand/FIDO-Revocation-SDK
```

ตัวอย่าง

```
dependencies:
  flutter:
    sdk: flutter
  fido_revocation_sdk:
    git:
      url: https://github.com/rstthailand/FIDO-Revocation-SDK
      
```

จากนั้นเรียกใช้คำสั่ง

```
flutter pub get
```


## การใชังาน

นำเข้า package
```
import 'package:fido_revocation_sdk/fido_revocation_sdk.dart';
```


เรียกใช้คำสั่ง
```
getStatus(qrcodeToekn,endpointUrl);
```
ตัวอย่าง
```
Future _getAuthStatus() async {
 String? status = await getStatus(qrcodeToekn,endpointUrl);
}
```

ตัว sdk จะ return  ค่า status จาก server เป็น String เช่น new , used ,revoked เป็นต้น
** หากเกิดข้อผิดพลาดจะ return status =  'error' 

