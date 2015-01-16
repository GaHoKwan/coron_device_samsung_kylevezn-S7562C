.class public Landroid/app/enterprise/ManagedAppInfo;
.super Ljava/lang/Object;
.source "ManagedAppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/enterprise/ManagedAppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAppDisabled:I

.field public mAppInstallCount:I

.field public mAppInstallationDisabled:I

.field public mAppPkg:Ljava/lang/String;

.field public mAppUninstallCount:I

.field public mAppUninstallationDisabled:I

.field public mControlStateDisableCause:I

.field public mControlStateDisableCauseMetadata:Ljava/lang/String;

.field public mIsEnterpriseApp:I

.field public mIsInstallSourceMDM:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    new-instance v0, Landroid/app/enterprise/ManagedAppInfo$1;

    invoke-direct {v0}, Landroid/app/enterprise/ManagedAppInfo$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/ManagedAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v2, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    .line 51
    iput v1, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallCount:I

    .line 57
    iput v1, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppUninstallCount:I

    .line 68
    iput v1, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppDisabled:I

    .line 79
    iput v1, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallationDisabled:I

    .line 90
    iput v1, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppUninstallationDisabled:I

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/enterprise/ManagedAppInfo;->mControlStateDisableCause:I

    .line 110
    iput-object v2, p0, Landroid/app/enterprise/ManagedAppInfo;->mControlStateDisableCauseMetadata:Ljava/lang/String;

    .line 121
    iput v1, p0, Landroid/app/enterprise/ManagedAppInfo;->mIsEnterpriseApp:I

    .line 132
    iput v1, p0, Landroid/app/enterprise/ManagedAppInfo;->mIsInstallSourceMDM:I

    .line 135
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v2, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    .line 51
    iput v1, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallCount:I

    .line 57
    iput v1, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppUninstallCount:I

    .line 68
    iput v1, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppDisabled:I

    .line 79
    iput v1, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallationDisabled:I

    .line 90
    iput v1, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppUninstallationDisabled:I

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/enterprise/ManagedAppInfo;->mControlStateDisableCause:I

    .line 110
    iput-object v2, p0, Landroid/app/enterprise/ManagedAppInfo;->mControlStateDisableCauseMetadata:Ljava/lang/String;

    .line 121
    iput v1, p0, Landroid/app/enterprise/ManagedAppInfo;->mIsEnterpriseApp:I

    .line 132
    iput v1, p0, Landroid/app/enterprise/ManagedAppInfo;->mIsInstallSourceMDM:I

    .line 164
    invoke-virtual {p0, p1}, Landroid/app/enterprise/ManagedAppInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 165
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/enterprise/ManagedAppInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/app/enterprise/ManagedAppInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallCount:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppUninstallCount:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppDisabled:I

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallationDisabled:I

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppUninstallationDisabled:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/ManagedAppInfo;->mControlStateDisableCause:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ManagedAppInfo;->mControlStateDisableCauseMetadata:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/ManagedAppInfo;->mIsEnterpriseApp:I

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/ManagedAppInfo;->mIsInstallSourceMDM:I

    .line 192
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,InstallCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", UninstallCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppUninstallCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAppDisabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAppInstallationDisabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallationDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAppUninstallationDisabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppUninstallationDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .line 168
    iget-object v0, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget v0, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget v0, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppUninstallCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget v0, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppDisabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget v0, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallationDisabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget v0, p0, Landroid/app/enterprise/ManagedAppInfo;->mAppUninstallationDisabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget v0, p0, Landroid/app/enterprise/ManagedAppInfo;->mControlStateDisableCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v0, p0, Landroid/app/enterprise/ManagedAppInfo;->mControlStateDisableCauseMetadata:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget v0, p0, Landroid/app/enterprise/ManagedAppInfo;->mIsEnterpriseApp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget v0, p0, Landroid/app/enterprise/ManagedAppInfo;->mIsInstallSourceMDM:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    return-void
.end method
