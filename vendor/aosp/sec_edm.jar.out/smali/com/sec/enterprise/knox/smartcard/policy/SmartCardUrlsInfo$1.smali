.class final Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo$1;
.super Ljava/lang/Object;
.source "SmartCardUrlsInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;
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
        "Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;
    .locals 2
    .parameter "in"

    .prologue
    .line 82
    new-instance v0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;-><init>(Landroid/os/Parcel;Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 86
    new-array v0, p1, [Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo$1;->newArray(I)[Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;

    move-result-object v0

    return-object v0
.end method
