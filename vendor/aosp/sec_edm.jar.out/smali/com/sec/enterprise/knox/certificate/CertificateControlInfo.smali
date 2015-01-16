.class public Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;
.super Ljava/lang/Object;
.source "CertificateControlInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;",
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
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo$1;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo$1;-><init>()V

    sput-object v0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;->adminPackageName:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;->entries:Ljava/util/List;

    .line 51
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;->adminPackageName:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;->entries:Ljava/util/List;

    .line 74
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/enterprise/knox/certificate/CertificateControlInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;->adminPackageName:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 93
    .local v1, size:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;->entries:Ljava/util/List;

    .line 94
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 95
    iget-object v3, p0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;->entries:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adminPackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;->adminPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,entries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;->entries:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flag"

    .prologue
    .line 78
    iget-object v2, p0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;->adminPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;->entries:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 81
    .local v1, size:I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 83
    iget-object v2, p0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;->entries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    :cond_1
    return-void
.end method
