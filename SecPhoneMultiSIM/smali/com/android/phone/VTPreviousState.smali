.class public Lcom/android/phone/VTPreviousState;
.super Ljava/lang/Object;
.source "VTPreviousState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/phone/VTPreviousState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFarOrNearEndRecordingTime:J

.field private mInputDTMFString:Ljava/lang/String;

.field private mIsEmotionalAniAuto:B

.field private mIsFarOrNearEndRecording:B

.field private mIsFirstVideoFrameDecoded:B

.field private mIsHideMe:B

.field private mIsNearEndTransparent:B

.field private mIsNoDataFromModem:B

.field private mIsShowingCartoonView:B

.field private mIsShowingEmotionalAni:B

.field private mIsShowingThemeView:B

.field private mIsSpeakerOn:B

.field private mIsSurfaceViewSwipe:B

.field private mKeyPadShowing:B

.field private mRecordingFilePath:Ljava/lang/String;

.field private mThemeViewStatus:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    new-instance v0, Lcom/android/phone/VTPreviousState$1;

    invoke-direct {v0}, Lcom/android/phone/VTPreviousState$1;-><init>()V

    sput-object v0, Lcom/android/phone/VTPreviousState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(BBBLjava/lang/String;BJLjava/lang/String;BBBBBBBBB)V
    .locals 1
    .parameter "firstVideoFrameDecoded"
    .parameter "speakerOn"
    .parameter "keyPadShowing"
    .parameter "inputDTMFString"
    .parameter "farOrNearEndRecording"
    .parameter "farOrNearEndRecordingTime"
    .parameter "recordingFilePath"
    .parameter "surfaceViewSwipe"
    .parameter "hideMe"
    .parameter "showingEmotionalAni"
    .parameter "emotionalAniAuto"
    .parameter "showingThemeView"
    .parameter "themeViewStatus"
    .parameter "showingCartoonView"
    .parameter "noDataFromModem"
    .parameter "nearEndTransparent"

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-byte p1, p0, Lcom/android/phone/VTPreviousState;->mIsFirstVideoFrameDecoded:B

    .line 157
    iput-byte p2, p0, Lcom/android/phone/VTPreviousState;->mIsSpeakerOn:B

    .line 158
    iput-byte p3, p0, Lcom/android/phone/VTPreviousState;->mKeyPadShowing:B

    .line 159
    iput-object p4, p0, Lcom/android/phone/VTPreviousState;->mInputDTMFString:Ljava/lang/String;

    .line 160
    iput-byte p5, p0, Lcom/android/phone/VTPreviousState;->mIsFarOrNearEndRecording:B

    .line 161
    iput-wide p6, p0, Lcom/android/phone/VTPreviousState;->mFarOrNearEndRecordingTime:J

    .line 162
    iput-object p8, p0, Lcom/android/phone/VTPreviousState;->mRecordingFilePath:Ljava/lang/String;

    .line 163
    iput-byte p9, p0, Lcom/android/phone/VTPreviousState;->mIsSurfaceViewSwipe:B

    .line 164
    iput-byte p10, p0, Lcom/android/phone/VTPreviousState;->mIsHideMe:B

    .line 165
    iput-byte p11, p0, Lcom/android/phone/VTPreviousState;->mIsShowingEmotionalAni:B

    .line 166
    iput-byte p12, p0, Lcom/android/phone/VTPreviousState;->mIsEmotionalAniAuto:B

    .line 167
    iput-byte p13, p0, Lcom/android/phone/VTPreviousState;->mIsShowingThemeView:B

    .line 168
    iput-byte p14, p0, Lcom/android/phone/VTPreviousState;->mThemeViewStatus:B

    .line 169
    move/from16 v0, p15

    iput-byte v0, p0, Lcom/android/phone/VTPreviousState;->mIsShowingCartoonView:B

    .line 170
    move/from16 v0, p16

    iput-byte v0, p0, Lcom/android/phone/VTPreviousState;->mIsNoDataFromModem:B

    .line 171
    move/from16 v0, p17

    iput-byte v0, p0, Lcom/android/phone/VTPreviousState;->mIsNearEndTransparent:B

    .line 172
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public getFarOrNearEndRecordingTime()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/android/phone/VTPreviousState;->mFarOrNearEndRecordingTime:J

    return-wide v0
.end method

.method public getInputDTMFString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/VTPreviousState;->mInputDTMFString:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordingFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/VTPreviousState;->mRecordingFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeViewStatus()B
    .locals 1

    .prologue
    .line 121
    iget-byte v0, p0, Lcom/android/phone/VTPreviousState;->mThemeViewStatus:B

    return v0
.end method

.method public isEmotionalAniAuto()B
    .locals 1

    .prologue
    .line 105
    iget-byte v0, p0, Lcom/android/phone/VTPreviousState;->mIsEmotionalAniAuto:B

    return v0
.end method

.method public isFarOrNearEndRecording()B
    .locals 1

    .prologue
    .line 61
    iget-byte v0, p0, Lcom/android/phone/VTPreviousState;->mIsFarOrNearEndRecording:B

    return v0
.end method

.method public isFirstVideoFrameDecoded()B
    .locals 1

    .prologue
    .line 25
    iget-byte v0, p0, Lcom/android/phone/VTPreviousState;->mIsFirstVideoFrameDecoded:B

    return v0
.end method

.method public isHideMe()B
    .locals 1

    .prologue
    .line 89
    iget-byte v0, p0, Lcom/android/phone/VTPreviousState;->mIsHideMe:B

    return v0
.end method

.method public isKeyPadShowing()B
    .locals 1

    .prologue
    .line 41
    iget-byte v0, p0, Lcom/android/phone/VTPreviousState;->mKeyPadShowing:B

    return v0
.end method

.method public isNearEndTransparent()B
    .locals 1

    .prologue
    .line 145
    iget-byte v0, p0, Lcom/android/phone/VTPreviousState;->mIsNearEndTransparent:B

    return v0
.end method

.method public isNoDataFromModem()B
    .locals 1

    .prologue
    .line 137
    iget-byte v0, p0, Lcom/android/phone/VTPreviousState;->mIsNoDataFromModem:B

    return v0
.end method

.method public isShowingCartoonView()B
    .locals 1

    .prologue
    .line 129
    iget-byte v0, p0, Lcom/android/phone/VTPreviousState;->mIsShowingCartoonView:B

    return v0
.end method

.method public isShowingEmotionalAni()B
    .locals 1

    .prologue
    .line 97
    iget-byte v0, p0, Lcom/android/phone/VTPreviousState;->mIsShowingEmotionalAni:B

    return v0
.end method

.method public isShowingThemeView()B
    .locals 1

    .prologue
    .line 113
    iget-byte v0, p0, Lcom/android/phone/VTPreviousState;->mIsShowingThemeView:B

    return v0
.end method

.method public isSpeakerOn()B
    .locals 1

    .prologue
    .line 33
    iget-byte v0, p0, Lcom/android/phone/VTPreviousState;->mIsSpeakerOn:B

    return v0
.end method

.method public isSurfaceViewSwipe()B
    .locals 1

    .prologue
    .line 81
    iget-byte v0, p0, Lcom/android/phone/VTPreviousState;->mIsSurfaceViewSwipe:B

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 181
    iget-byte v0, p0, Lcom/android/phone/VTPreviousState;->mIsFirstVideoFrameDecoded:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 182
    iget-byte v0, p0, Lcom/android/phone/VTPreviousState;->mIsSpeakerOn:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 183
    iget-byte v0, p0, Lcom/android/phone/VTPreviousState;->mKeyPadShowing:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 184
    iget-object v0, p0, Lcom/android/phone/VTPreviousState;->mInputDTMFString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-byte v0, p0, Lcom/android/phone/VTPreviousState;->mIsFarOrNearEndRecording:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 186
    iget-wide v0, p0, Lcom/android/phone/VTPreviousState;->mFarOrNearEndRecordingTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 187
    iget-object v0, p0, Lcom/android/phone/VTPreviousState;->mRecordingFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-byte v0, p0, Lcom/android/phone/VTPreviousState;->mIsSurfaceViewSwipe:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 189
    iget-byte v0, p0, Lcom/android/phone/VTPreviousState;->mIsHideMe:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 190
    iget-byte v0, p0, Lcom/android/phone/VTPreviousState;->mIsShowingEmotionalAni:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 191
    iget-byte v0, p0, Lcom/android/phone/VTPreviousState;->mIsEmotionalAniAuto:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 192
    iget-byte v0, p0, Lcom/android/phone/VTPreviousState;->mIsShowingThemeView:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 193
    iget-byte v0, p0, Lcom/android/phone/VTPreviousState;->mThemeViewStatus:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 194
    iget-byte v0, p0, Lcom/android/phone/VTPreviousState;->mIsShowingCartoonView:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 195
    iget-byte v0, p0, Lcom/android/phone/VTPreviousState;->mIsNoDataFromModem:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 196
    iget-byte v0, p0, Lcom/android/phone/VTPreviousState;->mIsNearEndTransparent:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 197
    return-void
.end method
