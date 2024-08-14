# Assignment

## 1. Problem & Purpose

### i. 메모리에 저장된 숫자 3 개를 1 바이트 단위로 읽어서 해당 가져온 데이터의 값에 따

```
라 R5에 0x0A보다 클 경우 1, 작을 경우 2, 같을 경우 3 을 저장하는 프로그램을 작
성하라. 단 조건부 실행 명령어를 사용하고 일어올 메모리 번지와 저장되는 값은 임
의로 입력한다.
```
### ii. R0, R1, R2, R3 레지스터에 각각 1~4의 값을 저장하고 해당 값을 이용하여 R 5 와 R6에

```
0x04030201과 0 x 01020304 를 저장하라. 단 little-endian 방식을 사용하고 있음을 감안한
다.
```
## 2. Used Instruction

## 1 - 1 : LDR // LDRB // STR // STRB // CMP // MOV // MOVEQ // MOVLT // MOVGT // END

## i. LDR Rd, operand 1 : operand1의 메모리 위치의 값을 word 크기만큼 Rd에 불러온다.

## ii. LDRB Rd, operand 1 : operand1의 메모리 위치의 값을 byte 크기만큼 Rd에 저장한다.

### iii. STR Rd, [R0, offset] : R0으로부터 offset만큼 이동한 위치에 R0의 값을 word 크기만큼

## 저장한다.

### iv. STRB Rd, [R0, offset] : R0으로부터 offset만큼 이동한 위치에 R0의 값을 byte 크기만큼

## 저장한다.

## v. CMP Rd, operand1 : Rd – operand1을 한 state를 cpsr에 업데이트한다.

## vi. MOV Rd operand 1 : operand 1 에 있는 값을 Rd에 저장한다.

### vii. MOVEQ Rd operand1 : Z가 1 인 경우(CMP로 비교한 두 값이 같을 경우) operand 1 에 있

## 는 값을 Rd에 저장한다.

### viii. MOVLT Rd operand1 : CMP로 비교한 두 값 중 좌측 값이 우측 값보다 overflow 없이

## 작을 경우 operand 1 에 있는 값을 Rd에 저장한다.

### ix. MOVGT Rd operand1 : CMP로 비교한 두 값 중 좌측 값이 우측 값보다 overflow 없이

## 클 경우 operand 1 에 있는 값을 Rd에 저장한다.


## x. END : Assembly code가 끝났음을 의미하는 Instruction

## 1 - 2 : LDR // STRB // MOV // END

## i. LDR Rd, operand1 : operand1의 메모리 위치의 값을 word 크기만큼 Rd에 저장한다.

### ii. STRB Rd, [R0, offset] : R0으로부터 offset만큼 이동한 위치에 R0의 값을 byte 크기만큼

## 저장한다.

## iii. MOV Rd operand 1 : operand 1 에 있는 값을 Rd에 저장한다.

## iv. END : Assembly code가 끝났음을 의미하는 Instruction

## 3. Design(Flow chart)

## i. 1 - 1 flow chart

## ii. 1 - 2 flow chart


## 4. Conclusion

## i. 1 - 1 result


- TEMP의 위치에 0x070A0B가 정상적으로 들어갔다.
- TEMP에서 0 x 07 만 읽어와 비교하였을 때 10 보다 적음으로 r 5 에 2 저장


- TEMP + 1에서 0 x 0 A만 읽어와 비교하였을 때 10 과 같음으로 r5에 3 저장
- TEMP + 2에서 0 x 0 B만 읽어와 비교하였을 때 10 보다 적음으로 r5에 1 저장


## ii. 1 - 2 result

- TEMP의 위치에 0x0 4030201 이 정상적으로 들어왔고 해당 값이 R5에 전달되었다.


- TEMP의 위치에 0x0 1020304 이 정상적으로 들어왔고 해당 값이 R6에 전달되었다.

## 5. Reference

### i. 이준환 교수님/어셈블리프로그램설계및실습/광운대학교(컴퓨터정보공학부)/


