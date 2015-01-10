.class public Lcom/sec/android/app/contacts/group/GroupInfo;
.super Ljava/lang/Object;
.source "GroupInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/app/contacts/group/GroupInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final accountName:Ljava/lang/String;

.field private final accountType:Ljava/lang/String;

.field private final dataSet:Ljava/lang/String;

.field private final groupId:J

.field private final systemId:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo$1;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/group/GroupInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/group/GroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "accountType"
    .parameter "accountName"
    .parameter "dataSet"
    .parameter "groupId"
    .parameter "title"
    .parameter "systemId"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->accountType:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->accountName:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->dataSet:Ljava/lang/String;

    .line 46
    iput-wide p4, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->groupId:J

    .line 47
    iput-object p6, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->title:Ljava/lang/String;

    .line 48
    iput-object p7, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->systemId:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 77
    instance-of v2, p1, Lcom/sec/android/app/contacts/group/GroupInfo;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 78
    check-cast v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 79
    .local v0, otherGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->accountName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->dataSet:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getDataSet()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->title:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->systemId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 86
    .end local v0           #otherGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    :cond_0
    return v1
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->accountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->dataSet:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->groupId:J

    return-wide v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->accountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->accountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->dataSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-wide v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->groupId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->systemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    return-void
.end method
