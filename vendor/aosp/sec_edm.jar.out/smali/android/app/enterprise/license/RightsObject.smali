.class public Landroid/app/enterprise/license/RightsObject;
.super Ljava/lang/Object;
.source "RightsObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/enterprise/license/RightsObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private expiryDate:J

.field private instanceId:Ljava/lang/String;

.field private issueDate:J

.field private licenseType:J

.field private permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private state:Ljava/lang/String;

.field private uploadFrequency:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 185
    new-instance v0, Landroid/app/enterprise/license/RightsObject$1;

    invoke-direct {v0}, Landroid/app/enterprise/license/RightsObject$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/license/RightsObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    invoke-virtual {p0, p1}, Landroid/app/enterprise/license/RightsObject;->readFromParcel(Landroid/os/Parcel;)V

    .line 198
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/enterprise/license/RightsObject$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/app/enterprise/license/RightsObject;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public getExpiryDate()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Landroid/app/enterprise/license/RightsObject;->expiryDate:J

    return-wide v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Landroid/app/enterprise/license/RightsObject;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getIssueDate()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Landroid/app/enterprise/license/RightsObject;->issueDate:J

    return-wide v0
.end method

.method public getLicenseType()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Landroid/app/enterprise/license/RightsObject;->licenseType:J

    return-wide v0
.end method

.method public getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Landroid/app/enterprise/license/RightsObject;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Landroid/app/enterprise/license/RightsObject;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadFrequency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Landroid/app/enterprise/license/RightsObject;->uploadFrequency:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/license/RightsObject;->instanceId:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/license/RightsObject;->state:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/enterprise/license/RightsObject;->issueDate:J

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/enterprise/license/RightsObject;->expiryDate:J

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/enterprise/license/RightsObject;->licenseType:J

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/license/RightsObject;->permissions:Ljava/util/List;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/license/RightsObject;->uploadFrequency:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setExpiryDate(J)V
    .locals 0
    .parameter "expiryDate"

    .prologue
    .line 155
    iput-wide p1, p0, Landroid/app/enterprise/license/RightsObject;->expiryDate:J

    .line 156
    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0
    .parameter "instanceId"

    .prologue
    .line 134
    iput-object p1, p0, Landroid/app/enterprise/license/RightsObject;->instanceId:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setIssueDate(J)V
    .locals 0
    .parameter "issueDate"

    .prologue
    .line 148
    iput-wide p1, p0, Landroid/app/enterprise/license/RightsObject;->issueDate:J

    .line 149
    return-void
.end method

.method public setLicenseType(J)V
    .locals 0
    .parameter "licenseType"

    .prologue
    .line 162
    iput-wide p1, p0, Landroid/app/enterprise/license/RightsObject;->licenseType:J

    .line 163
    return-void
.end method

.method public setPermissions(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/app/enterprise/license/RightsObject;->permissions:Ljava/util/List;

    .line 170
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 141
    iput-object p1, p0, Landroid/app/enterprise/license/RightsObject;->state:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setUploadFrequency(Ljava/lang/String;)V
    .locals 0
    .parameter "uploadFrequency"

    .prologue
    .line 176
    iput-object p1, p0, Landroid/app/enterprise/license/RightsObject;->uploadFrequency:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flag"

    .prologue
    .line 202
    iget-object v0, p0, Landroid/app/enterprise/license/RightsObject;->instanceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Landroid/app/enterprise/license/RightsObject;->state:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-wide v0, p0, Landroid/app/enterprise/license/RightsObject;->issueDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 205
    iget-wide v0, p0, Landroid/app/enterprise/license/RightsObject;->expiryDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 206
    iget-wide v0, p0, Landroid/app/enterprise/license/RightsObject;->licenseType:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 207
    iget-object v0, p0, Landroid/app/enterprise/license/RightsObject;->permissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 208
    iget-object v0, p0, Landroid/app/enterprise/license/RightsObject;->uploadFrequency:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    return-void
.end method
