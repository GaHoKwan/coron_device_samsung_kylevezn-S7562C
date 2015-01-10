.class public Lcom/android/contacts/list/ContactsRequest;
.super Ljava/lang/Object;
.source "ContactsRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/list/ContactsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mActionCode:I

.field private mChangeDisplayMode:Z

.field private mContactUri:Landroid/net/Uri;

.field private mDirectorySearchEnabled:Z

.field private mDisplayTab:Z

.field private mExtra:I

.field private mGroupName:Ljava/lang/String;

.field private mIncludeProfile:Z

.field private mLegacyCompatibilityMode:Z

.field private mMultipleSelectMode:Z

.field private mQueryString:Ljava/lang/String;

.field private mRedirectIntent:Landroid/content/Intent;

.field private mSearchMode:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mValid:Z

.field private mhidecreatelabel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 242
    new-instance v0, Lcom/android/contacts/list/ContactsRequest$1;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactsRequest$1;-><init>()V

    sput-object v0, Lcom/android/contacts/list/ContactsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    .line 195
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    .line 203
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mhidecreatelabel:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    return p1
.end method

.method static synthetic access$1002(Lcom/android/contacts/list/ContactsRequest;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/contacts/list/ContactsRequest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mhidecreatelabel:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/contacts/list/ContactsRequest;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/contacts/list/ContactsRequest;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/contacts/list/ContactsRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/contacts/list/ContactsRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mGroupName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    return p1
.end method


# virtual methods
.method public copyFrom(Lcom/android/contacts/list/ContactsRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 228
    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    .line 229
    iget v0, p1, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    iput v0, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    .line 230
    iget-object v0, p1, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    .line 231
    iget-object v0, p1, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    .line 232
    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    .line 233
    iget-object v0, p1, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    .line 234
    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    .line 235
    iget-object v0, p1, Lcom/android/contacts/list/ContactsRequest;->mGroupName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mGroupName:Ljava/lang/String;

    .line 236
    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    .line 237
    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    .line 238
    iget-object v0, p1, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    .line 239
    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mhidecreatelabel:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mhidecreatelabel:Z

    .line 240
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getActionCode()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    return v0
.end method

.method public getActivityTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getContactUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getExtraValue()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lcom/android/contacts/list/ContactsRequest;->mExtra:I

    return v0
.end method

.method public getHideCreateLabel()Z
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mhidecreatelabel:Z

    return v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getTabMode()Z
    .locals 1

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mDisplayTab:Z

    return v0
.end method

.method public isDirectorySearchEnabled()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    return v0
.end method

.method public isLegacyCompatibilityMode()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    return v0
.end method

.method public isMultiSelectMode()Z
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mMultipleSelectMode:Z

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    return v0
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0
    .parameter "accountName"

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mAccountName:Ljava/lang/String;

    .line 413
    return-void
.end method

.method public setAccountType(Ljava/lang/String;)V
    .locals 0
    .parameter "accountType"

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mAccountType:Ljava/lang/String;

    .line 421
    return-void
.end method

.method public setActionCode(I)V
    .locals 0
    .parameter "actionCode"

    .prologue
    .line 315
    iput p1, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    .line 316
    return-void
.end method

.method public setActivityTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    .line 304
    return-void
.end method

.method public setChangeDisplayMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 430
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mChangeDisplayMode:Z

    .line 431
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "contactUri"

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    .line 384
    return-void
.end method

.method public setDirectorySearchEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 375
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    .line 376
    return-void
.end method

.method public setExtraValue(I)V
    .locals 0
    .parameter "extra"

    .prologue
    .line 404
    iput p1, p0, Lcom/android/contacts/list/ContactsRequest;->mExtra:I

    .line 405
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0
    .parameter "groupName"

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mGroupName:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public setHideCreateLabel(Z)V
    .locals 0
    .parameter "hidecreateLabel"

    .prologue
    .line 347
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mhidecreatelabel:Z

    .line 348
    return-void
.end method

.method public setIncludeProfile(Z)V
    .locals 0
    .parameter "includeProfile"

    .prologue
    .line 339
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    .line 340
    return-void
.end method

.method public setLegacyCompatibilityMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 363
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    .line 364
    return-void
.end method

.method public setMutiSelectMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 392
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mMultipleSelectMode:Z

    .line 393
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 323
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    .line 324
    return-void
.end method

.method public setTabMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 400
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mDisplayTab:Z

    .line 401
    return-void
.end method

.method public setValid(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    .line 292
    return-void
.end method

.method public shouldIncludeProfile()Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ContactsRequest:mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mActionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRedirectIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSearchMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mQueryString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIncludeProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mGroupName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactsRequest;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLegacyCompatibilityMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDirectorySearchEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mContactUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mhidecreatelabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mhidecreatelabel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 268
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget v0, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 271
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 272
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mGroupName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 279
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mhidecreatelabel:Z

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    return-void

    :cond_0
    move v0, v2

    .line 268
    goto :goto_0

    :cond_1
    move v0, v2

    .line 272
    goto :goto_1

    :cond_2
    move v0, v2

    .line 274
    goto :goto_2

    :cond_3
    move v0, v2

    .line 276
    goto :goto_3

    :cond_4
    move v0, v2

    .line 277
    goto :goto_4

    :cond_5
    move v1, v2

    .line 279
    goto :goto_5
.end method
