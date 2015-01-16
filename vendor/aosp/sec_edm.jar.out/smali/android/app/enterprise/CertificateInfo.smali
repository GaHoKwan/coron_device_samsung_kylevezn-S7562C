.class public Landroid/app/enterprise/CertificateInfo;
.super Ljava/lang/Object;
.source "CertificateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCertificate:Ljava/security/cert/Certificate;

.field mKey:Ljava/security/Key;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Landroid/app/enterprise/CertificateInfo$1;

    invoke-direct {v0}, Landroid/app/enterprise/CertificateInfo$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/CertificateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Landroid/app/enterprise/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    .line 57
    iput-object v0, p0, Landroid/app/enterprise/CertificateInfo;->mKey:Ljava/security/Key;

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Landroid/app/enterprise/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    .line 57
    iput-object v0, p0, Landroid/app/enterprise/CertificateInfo;->mKey:Ljava/security/Key;

    .line 98
    invoke-direct {p0, p1}, Landroid/app/enterprise/CertificateInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/Certificate;)V
    .locals 1
    .parameter "cert"

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Landroid/app/enterprise/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    .line 57
    iput-object v0, p0, Landroid/app/enterprise/CertificateInfo;->mKey:Ljava/security/Key;

    .line 103
    iput-object p1, p0, Landroid/app/enterprise/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    .line 104
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    iput-object v0, p0, Landroid/app/enterprise/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    iput-object v0, p0, Landroid/app/enterprise/CertificateInfo;->mKey:Ljava/security/Key;

    .line 142
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public getCertificate()Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Landroid/app/enterprise/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public getPrivateKey()Ljava/security/Key;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Landroid/app/enterprise/CertificateInfo;->mKey:Ljava/security/Key;

    return-object v0
.end method

.method public setCertificate(Ljava/security/cert/Certificate;)V
    .locals 0
    .parameter "aCertificate"

    .prologue
    .line 151
    iput-object p1, p0, Landroid/app/enterprise/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    .line 152
    return-void
.end method

.method public setPrivateKey(Ljava/security/Key;)V
    .locals 0
    .parameter "aKey"

    .prologue
    .line 161
    iput-object p1, p0, Landroid/app/enterprise/CertificateInfo;->mKey:Ljava/security/Key;

    .line 162
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flag"

    .prologue
    .line 118
    iget-object v0, p0, Landroid/app/enterprise/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 120
    iget-object v0, p0, Landroid/app/enterprise/CertificateInfo;->mKey:Ljava/security/Key;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 122
    return-void
.end method
