.class public Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;
.super Ljava/lang/Object;
.source "SmartCardUrlsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public adminPackageName:Ljava/lang/String;

.field public entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo$1;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo$1;-><init>()V

    sput-object v0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;->adminPackageName:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;->entries:Ljava/util/List;

    .line 61
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;->adminPackageName:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;->entries:Ljava/util/List;

    .line 91
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;->adminPackageName:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;->entries:Ljava/util/List;

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adminPackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;->adminPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,appControlType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;->entries:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flag"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;->adminPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;->entries:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 100
    return-void
.end method
