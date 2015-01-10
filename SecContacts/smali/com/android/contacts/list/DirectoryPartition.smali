.class public final Lcom/android/contacts/list/DirectoryPartition;
.super Lcom/android/common/widget/CompositeCursorAdapter$Partition;
.source "DirectoryPartition.java"


# instance fields
.field private mDirectoryAccountType:Ljava/lang/String;

.field private mDirectoryId:J

.field private mDirectoryType:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mPhotoSupported:Z

.field private mPriorityDirectory:Z

.field private mStatus:I


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0
    .parameter "showIfEmpty"
    .parameter "hasHeader"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/common/widget/CompositeCursorAdapter$Partition;-><init>(ZZ)V

    .line 41
    return-void
.end method


# virtual methods
.method public getDirectoryAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mDirectoryAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryId()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mDirectoryId:J

    return-wide v0
.end method

.method public getDirectoryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mDirectoryType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mStatus:I

    return v0
.end method

.method public isLoading()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 86
    iget v1, p0, Lcom/android/contacts/list/DirectoryPartition;->mStatus:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/contacts/list/DirectoryPartition;->mStatus:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhotoSupported()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mPhotoSupported:Z

    return v0
.end method

.method public isPriorityDirectory()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/contacts/list/DirectoryPartition;->mPriorityDirectory:Z

    return v0
.end method

.method public setDirectoryAccountType(Ljava/lang/String;)V
    .locals 0
    .parameter "accountType"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/contacts/list/DirectoryPartition;->mDirectoryAccountType:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setDirectoryId(J)V
    .locals 0
    .parameter "directoryId"

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/android/contacts/list/DirectoryPartition;->mDirectoryId:J

    .line 52
    return-void
.end method

.method public setDirectoryType(Ljava/lang/String;)V
    .locals 0
    .parameter "directoryType"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/contacts/list/DirectoryPartition;->mDirectoryType:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .parameter "displayName"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/contacts/list/DirectoryPartition;->mDisplayName:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setPhotoSupported(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/contacts/list/DirectoryPartition;->mPhotoSupported:Z

    .line 109
    return-void
.end method

.method public setPriorityDirectory(Z)V
    .locals 0
    .parameter "priorityDirectory"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/contacts/list/DirectoryPartition;->mPriorityDirectory:Z

    .line 98
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/contacts/list/DirectoryPartition;->mStatus:I

    .line 83
    return-void
.end method
