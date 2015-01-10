.class final Lcom/android/phone/VTPreviousState$1;
.super Ljava/lang/Object;
.source "VTPreviousState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VTPreviousState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/phone/VTPreviousState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/phone/VTPreviousState;
    .locals 18
    .parameter "source"

    .prologue
    .line 201
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 202
    .local v1, firstVideoFrameDecodede:B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 203
    .local v2, speakerOn:B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 204
    .local v3, keyPadShowing:B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, inputDTMFString:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .line 206
    .local v5, farOrNearEndRecording:B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 207
    .local v6, farOrNearEndRecordingTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 208
    .local v8, recordingFilePath:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v9

    .line 209
    .local v9, surfaceViewSwipe:B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v10

    .line 210
    .local v10, hideMe:B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v11

    .line 211
    .local v11, showingEmotionalAni:B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v12

    .line 212
    .local v12, emotionalAniAuto:B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v13

    .line 213
    .local v13, showingThemeView:B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v14

    .line 214
    .local v14, themeViewStatus:B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v15

    .line 215
    .local v15, showingCartoonView:B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v16

    .line 216
    .local v16, noDataFromModem:B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v17

    .line 217
    .local v17, nearEndTransparent:B
    new-instance v0, Lcom/android/phone/VTPreviousState;

    invoke-direct/range {v0 .. v17}, Lcom/android/phone/VTPreviousState;-><init>(BBBLjava/lang/String;BJLjava/lang/String;BBBBBBBBB)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/android/phone/VTPreviousState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/phone/VTPreviousState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/phone/VTPreviousState;
    .locals 1
    .parameter "size"

    .prologue
    .line 224
    new-array v0, p1, [Lcom/android/phone/VTPreviousState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/android/phone/VTPreviousState$1;->newArray(I)[Lcom/android/phone/VTPreviousState;

    move-result-object v0

    return-object v0
.end method
