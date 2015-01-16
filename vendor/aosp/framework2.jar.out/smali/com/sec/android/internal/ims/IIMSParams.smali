.class public Lcom/sec/android/internal/ims/IIMSParams;
.super Ljava/lang/Object;
.source "IIMSParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/internal/ims/IIMSParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private audioCodec:Ljava/lang/String;

.field private historyInfo:Ljava/lang/String;

.field private isConferenceCall:Ljava/lang/String;

.field private modifySupported:Ljava/lang/String;

.field private numberPlus:Ljava/lang/String;

.field private pLettering:Ljava/lang/String;

.field private reasonCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/sec/android/internal/ims/IIMSParams$1;

    invoke-direct {v0}, Lcom/sec/android/internal/ims/IIMSParams$1;-><init>()V

    sput-object v0, Lcom/sec/android/internal/ims/IIMSParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->pLettering:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->historyInfo:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->modifySupported:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->audioCodec:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->numberPlus:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->reasonCode:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->isConferenceCall:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public getAudioCodec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->audioCodec:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorReasonCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->reasonCode:Ljava/lang/String;

    return-object v0
.end method

.method public getHistoryInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->historyInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getIsConferenceCall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->isConferenceCall:Ljava/lang/String;

    return-object v0
.end method

.method public getModifyHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->modifySupported:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberPlus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->numberPlus:Ljava/lang/String;

    return-object v0
.end method

.method public getPLettering()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->pLettering:Ljava/lang/String;

    return-object v0
.end method

.method public setAudioCodec(Ljava/lang/String;)V
    .locals 0
    .parameter "codec"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/sec/android/internal/ims/IIMSParams;->audioCodec:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setErrorReasonCode(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sec/android/internal/ims/IIMSParams;->reasonCode:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setHistoryInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sec/android/internal/ims/IIMSParams;->historyInfo:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setIsConferenceCall(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/sec/android/internal/ims/IIMSParams;->isConferenceCall:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setModifyHeader(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sec/android/internal/ims/IIMSParams;->modifySupported:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setNumberPlus(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/android/internal/ims/IIMSParams;->numberPlus:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setPLettering(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sec/android/internal/ims/IIMSParams;->pLettering:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->pLettering:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->historyInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->modifySupported:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->audioCodec:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->numberPlus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->reasonCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/sec/android/internal/ims/IIMSParams;->isConferenceCall:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    return-void
.end method
