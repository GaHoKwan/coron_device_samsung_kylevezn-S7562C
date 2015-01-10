.class public Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;
.super Ljava/lang/Object;
.source "RcsDetailViewPinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner$RcsServiceObserver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field mFtIntent:Landroid/content/Intent;

.field mImIntent:Landroid/content/Intent;

.field mIsFTEnabled:Z

.field mIsIMEnabled:Z

.field private mQueryUri:Landroid/net/Uri;

.field private mTelNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method query()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 124
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->SIP_LOOKUP_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mTelNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mQueryUri:Landroid/net/Uri;

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mQueryUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 131
    .local v6, ret:Landroid/database/Cursor;
    return-object v6
.end method

.method readDataFromQuery(Landroid/database/Cursor;)V
    .locals 14
    .parameter "c"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 165
    iput-boolean v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mIsIMEnabled:Z

    .line 166
    iput-boolean v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mIsFTEnabled:Z

    .line 167
    iput-object v13, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mImIntent:Landroid/content/Intent;

    .line 168
    iput-object v13, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mFtIntent:Landroid/content/Intent;

    .line 170
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 171
    const-string v11, "feature_tag"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 172
    .local v7, serviceTagNo:I
    const-string v11, "is_enabled"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 173
    .local v1, enabledNo:I
    const-string v11, "int_name"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 174
    .local v6, intentNameNo:I
    const-string v11, "int_category"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 177
    .local v5, intentCategoryNo:I
    const-string v11, "sip_uri"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 181
    .local v9, sipUriNo:I
    :cond_0
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 182
    .local v10, tag:Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 184
    .local v0, enabled:I
    if-lez v0, :cond_2

    .line 186
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 187
    .local v8, sipUri:Ljava/lang/String;
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, intentAction:Ljava/lang/String;
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, intentCategory:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v2, v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 191
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v11, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 194
    iput-boolean v12, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mIsIMEnabled:Z

    .line 195
    iput-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mImIntent:Landroid/content/Intent;

    .line 199
    :cond_1
    const-string v11, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 200
    iput-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mFtIntent:Landroid/content/Intent;

    .line 201
    iput-boolean v12, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mIsFTEnabled:Z

    .line 204
    .end local v2           #i:Landroid/content/Intent;
    .end local v3           #intentAction:Ljava/lang/String;
    .end local v4           #intentCategory:Ljava/lang/String;
    .end local v8           #sipUri:Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_0

    .line 206
    .end local v0           #enabled:I
    .end local v1           #enabledNo:I
    .end local v5           #intentCategoryNo:I
    .end local v6           #intentNameNo:I
    .end local v7           #serviceTagNo:I
    .end local v9           #sipUriNo:I
    .end local v10           #tag:Ljava/lang/String;
    :cond_3
    return-void
.end method
