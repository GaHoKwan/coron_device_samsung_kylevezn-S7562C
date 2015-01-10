.class public Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;
.super Ljava/lang/Object;
.source "RcsDetailViewActivityPinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner$RcsServiceObserver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field isRcs:Z

.field mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

.field mFtBar:Landroid/widget/LinearLayout;

.field mFtButton:Landroid/widget/Button;

.field mFtIntent:Landroid/content/Intent;

.field mImBar:Landroid/widget/LinearLayout;

.field mImButton:Landroid/widget/Button;

.field mImIntent:Landroid/content/Intent;

.field mIsFTEnabled:Z

.field mIsIMEnabled:Z

.field private mQueryUri:Landroid/net/Uri;

.field mRcsCursor:Landroid/database/Cursor;

.field private mTelNumber:Ljava/lang/String;

.field private mUriGeneratorService:Lcom/samsung/rcs/urigenerator/IUriGeneratorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->LOG_TAG:Ljava/lang/String;

    .line 57
    const-class v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;Lcom/samsung/rcs/urigenerator/IUriGeneratorService;)Lcom/samsung/rcs/urigenerator/IUriGeneratorService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mUriGeneratorService:Lcom/samsung/rcs/urigenerator/IUriGeneratorService;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method query()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 160
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->SIP_LOOKUP_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mTelNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mQueryUri:Landroid/net/Uri;

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mQueryUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    .line 172
    return-void
.end method

.method readDataFromQuery()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v11, 0x0

    .line 200
    iput-boolean v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mIsIMEnabled:Z

    .line 201
    iput-boolean v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mIsFTEnabled:Z

    .line 202
    iput-object v12, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mImIntent:Landroid/content/Intent;

    .line 203
    iput-object v12, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mFtIntent:Landroid/content/Intent;

    .line 205
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 206
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    const-string v12, "feature_tag"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 207
    .local v7, serviceTagNo:I
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    const-string v12, "is_enabled"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 208
    .local v1, enabledNo:I
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    const-string v12, "int_name"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 209
    .local v6, intentNameNo:I
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    const-string v12, "int_category"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 212
    .local v5, intentCategoryNo:I
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    const-string v12, "sip_uri"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 216
    .local v9, sipUriNo:I
    :cond_0
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 217
    .local v10, tag:Ljava/lang/String;
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 219
    .local v0, enabled:I
    if-lez v0, :cond_2

    .line 221
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 222
    .local v8, sipUri:Ljava/lang/String;
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, intentAction:Ljava/lang/String;
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, intentCategory:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v2, v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 226
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v11, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 229
    iput-boolean v13, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mIsIMEnabled:Z

    .line 230
    iput-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mImIntent:Landroid/content/Intent;

    .line 234
    :cond_1
    const-string v11, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 235
    iput-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mFtIntent:Landroid/content/Intent;

    .line 236
    iput-boolean v13, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mIsFTEnabled:Z

    .line 239
    .end local v2           #i:Landroid/content/Intent;
    .end local v3           #intentAction:Ljava/lang/String;
    .end local v4           #intentCategory:Ljava/lang/String;
    .end local v8           #sipUri:Ljava/lang/String;
    :cond_2
    iget-object v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_0

    .line 242
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

.method updateUi()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 183
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->isRcs:Z

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mImBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mFtBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mImButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mFtButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mImButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mIsIMEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mFtButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mIsFTEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 197
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mImBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mFtBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
