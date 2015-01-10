.class public Lcom/android/contacts/list/ContactTileView;
.super Landroid/widget/FrameLayout;
.source "ContactTileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactTileView$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallButtonLayout:Landroid/view/View;

.field private mCallImage:Landroid/widget/ImageView;

.field private mContactLink:Ljava/lang/String;

.field private mDetailContainer:Landroid/view/View;

.field private mDisplayName:Ljava/lang/String;

.field private mHasPhoneNumber:Ljava/lang/Boolean;

.field private mHorizontalDivider:Landroid/view/View;

.field private mIsUserProfile:I

.field private mIsVoLTEEnabled:Z

.field private mListener:Lcom/android/contacts/list/ContactTileView$Listener;

.field private mLookupKey:Ljava/lang/String;

.field private mLookupUri:Landroid/net/Uri;

.field private mName:Landroid/widget/TextView;

.field private mPhoneLabel:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mPushState:Landroid/view/View;

.field private mQuickContact:Landroid/widget/QuickContactBadge;

.field private mStatus:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lcom/android/contacts/list/ContactTileView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/ContactTileView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 88
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mHasPhoneNumber:Ljava/lang/Boolean;

    .line 97
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactTileView;->mIsVoLTEEnabled:Z

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/ContactTileView;)Lcom/android/contacts/list/ContactTileView$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mListener:Lcom/android/contacts/list/ContactTileView$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/list/ContactTileView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/contacts/list/ContactTileView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/ContactTileView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getContactLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mContactLink:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .parameter "contactUri"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 303
    if-nez p1, :cond_1

    .line 304
    sget-object v0, Lcom/android/contacts/list/ContactTileView;->TAG:Ljava/lang/String;

    const-string v2, "Contact URI is null."

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    :goto_0
    return-object v3

    .line 308
    :cond_1
    const-string v0, "entities"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 309
    .local v1, uri:Landroid/net/Uri;
    sget-object v0, Lcom/android/contacts/list/ContactTileView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSweepActionStarted() / uri = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const-string v4, "data1"

    aput-object v4, v2, v9

    const-string v4, "is_super_primary"

    aput-object v4, v2, v11

    const-string v4, "mimetype"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 320
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_6

    .line 322
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 329
    .local v7, isSuperPrimary:I
    if-eqz v7, :cond_2

    .line 330
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 331
    .local v8, sendEmailAddress:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    .line 332
    goto :goto_0

    .line 341
    .end local v7           #isSuperPrimary:I
    .end local v8           #sendEmailAddress:Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 343
    :cond_4
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 344
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 345
    .restart local v8       #sendEmailAddress:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    .line 346
    goto/16 :goto_0

    .line 348
    .end local v8           #sendEmailAddress:Ljava/lang/String;
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 350
    :cond_6
    if-eqz v6, :cond_0

    .line 351
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public getEnableTouchScreenHeight()I
    .locals 6

    .prologue
    .line 237
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 238
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 239
    .local v0, dsp:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3feae147ae147ae1L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    return v2
.end method

.method public getLookupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getNameView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mName:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhoneNumber(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .parameter "contactUri"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 248
    if-nez p1, :cond_1

    .line 249
    sget-object v0, Lcom/android/contacts/list/ContactTileView;->TAG:Ljava/lang/String;

    const-string v2, "Contact URI is null."

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    :goto_0
    return-object v3

    .line 253
    :cond_1
    const-string v0, "entities"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 254
    .local v1, uri:Landroid/net/Uri;
    sget-object v0, Lcom/android/contacts/list/ContactTileView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSweepActionStarted() / uri = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const-string v4, "data1"

    aput-object v4, v2, v9

    const-string v4, "is_super_primary"

    aput-object v4, v2, v11

    const-string v4, "mimetype"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 265
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_6

    .line 267
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 269
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 274
    .local v8, isSuperPrimary:I
    if-eqz v8, :cond_2

    .line 275
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 276
    .local v6, callPhoneNumber:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v3, v6

    .line 277
    goto :goto_0

    .line 286
    .end local v6           #callPhoneNumber:Ljava/lang/String;
    .end local v8           #isSuperPrimary:I
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 288
    :cond_4
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 289
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 290
    .restart local v6       #callPhoneNumber:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v3, v6

    .line 291
    goto/16 :goto_0

    .line 293
    .end local v6           #callPhoneNumber:Ljava/lang/String;
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 295
    :cond_6
    if-eqz v7, :cond_0

    .line 296
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method protected isDarkTheme()Z
    .locals 1

    .prologue
    .line 509
    const/4 v0, 0x0

    return v0
.end method

.method protected isDefaultIconHires()I
    .locals 1

    .prologue
    .line 505
    const/4 v0, -0x1

    return v0
.end method

.method public isUserProfile()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 493
    iget v1, p0, Lcom/android/contacts/list/ContactTileView;->mIsUserProfile:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadFromContact(Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;I)V
    .locals 13
    .parameter "entry"
    .parameter "viewType"

    .prologue
    const v12, 0x7f0205b8

    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 369
    const/4 v7, 0x2

    .line 370
    .local v7, FREQUENT:I
    if-eqz p1, :cond_11

    .line 371
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mDisplayName:Ljava/lang/String;

    .line 374
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 375
    .local v8, prefs:Landroid/content/SharedPreferences;
    if-ne p2, v7, :cond_0

    const-string v0, "huge_font"

    invoke-interface {v8, v0, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x7f11004c

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 380
    :cond_0
    iget-object v0, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->lookupKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mLookupKey:Ljava/lang/String;

    .line 381
    iget-object v0, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->lookupKeyUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    .line 383
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->status:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 385
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 386
    if-eq p2, v7, :cond_1

    .line 387
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v9, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 398
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhoneLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhoneLabel:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->phoneLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 404
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhoneNumber:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    :cond_3
    invoke-virtual {p0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    if-eqz v0, :cond_b

    .line 410
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 412
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mPhoto:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->photoUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileView;->isDefaultIconHires()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileView;->isDarkTheme()Z

    move-result v4

    iget-wide v5, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->contactId:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZJ)V

    .line 415
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_4

    .line 416
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 429
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPushState:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 430
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPushState:Landroid/view/View;

    iget-object v1, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 435
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mCallButtonLayout:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 436
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mCallButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 438
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableCallButtonInList"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 440
    iget v0, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->hasPhoneNumber:I

    if-ne v0, v10, :cond_7

    .line 441
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-ne v10, v0, :cond_6

    .line 443
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileView;->mIsVoLTEEnabled:Z

    if-eqz v0, :cond_10

    .line 444
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 445
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 446
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mCallImage:Landroid/widget/ImageView;

    const v1, 0x7f0205ba

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 461
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mCallButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 466
    :cond_7
    iget v0, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->isUserProfile:I

    iput v0, p0, Lcom/android/contacts/list/ContactTileView;->mIsUserProfile:I

    .line 467
    iget-object v0, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->contactLink:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mContactLink:Ljava/lang/String;

    .line 474
    .end local v8           #prefs:Landroid/content/SharedPreferences;
    :goto_4
    return-void

    .line 389
    .restart local v8       #prefs:Landroid/content/SharedPreferences;
    :cond_8
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->presenceIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 392
    if-eq p2, v7, :cond_9

    .line 393
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v9, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 394
    :cond_9
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 418
    :cond_a
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_4

    .line 419
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 421
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v2, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->photoUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileView;->isDefaultIconHires()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileView;->isDarkTheme()Z

    move-result v4

    iget-wide v5, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->contactId:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZJ)V

    goto/16 :goto_1

    .line 426
    :cond_b
    sget-object v0, Lcom/android/contacts/list/ContactTileView;->TAG:Ljava/lang/String;

    const-string v1, "contactPhotoManager not set"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 431
    :cond_c
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_5

    .line 432
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 448
    :cond_d
    const-string v0, "feature_kt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 449
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mCallImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 451
    :cond_e
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 452
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mCallImage:Landroid/widget/ImageView;

    const v1, 0x7f0205b7

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 455
    :cond_f
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mCallImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 458
    :cond_10
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mCallImage:Landroid/widget/ImageView;

    const v1, 0x7f0205ca

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 470
    .end local v8           #prefs:Landroid/content/SharedPreferences;
    :cond_11
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method protected onFinishInflate()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 105
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 106
    const v7, 0x7f09017e

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mName:Landroid/widget/TextView;

    .line 107
    const v7, 0x7f090179

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mDetailContainer:Landroid/view/View;

    .line 108
    const v7, 0x7f090177

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/QuickContactBadge;

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 109
    const v7, 0x7f090194

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mPhoto:Landroid/widget/ImageView;

    .line 110
    const v7, 0x7f09017f

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    .line 111
    const v7, 0x7f090184

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mPhoneLabel:Landroid/widget/TextView;

    .line 112
    const v7, 0x7f090183

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mPhoneNumber:Landroid/widget/TextView;

    .line 113
    const v7, 0x7f090195

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mPushState:Landroid/view/View;

    .line 114
    const v7, 0x7f090180

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mHorizontalDivider:Landroid/view/View;

    .line 115
    const v7, 0x7f09017b

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mCallImage:Landroid/widget/ImageView;

    .line 117
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 118
    const v7, 0x7f09017a

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mCallButtonLayout:Landroid/view/View;

    .line 123
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v9, "CscFeature_Contact_DisableContactPhoto"

    invoke-virtual {v7, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 125
    const v7, 0x7f090178

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 126
    .local v1, imageContainer:Landroid/view/View;
    const v7, 0x7f09017d

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 127
    .local v6, textItem:Landroid/widget/RelativeLayout;
    if-eqz v1, :cond_0

    if-eqz v6, :cond_0

    .line 128
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 129
    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    invoke-virtual {v6, v8, v7, v9, v10}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 133
    .end local v1           #imageContainer:Landroid/view/View;
    .end local v6           #textItem:Landroid/widget/RelativeLayout;
    :cond_0
    new-instance v3, Lcom/android/contacts/list/ContactTileView$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/list/ContactTileView$1;-><init>(Lcom/android/contacts/list/ContactTileView;)V

    .line 142
    .local v3, listener:Landroid/view/View$OnClickListener;
    new-instance v4, Lcom/android/contacts/list/ContactTileView$2;

    invoke-direct {v4, p0}, Lcom/android/contacts/list/ContactTileView$2;-><init>(Lcom/android/contacts/list/ContactTileView;)V

    .line 156
    .local v4, mOnKeyListener:Landroid/view/View$OnKeyListener;
    new-instance v0, Lcom/android/contacts/list/ContactTileView$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactTileView$3;-><init>(Lcom/android/contacts/list/ContactTileView;)V

    .line 166
    .local v0, contextListener:Landroid/view/View$OnCreateContextMenuListener;
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mCallButtonLayout:Landroid/view/View;

    if-eqz v7, :cond_2

    .line 167
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "com.sec.feature.hovering_ui"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 168
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mCallButtonLayout:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setHoverPopupType(I)V

    .line 169
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mCallButtonLayout:Landroid/view/View;

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v10, 0x7f0d0341

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 172
    :cond_1
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mCallButtonLayout:Landroid/view/View;

    new-instance v9, Lcom/android/contacts/list/ContactTileView$4;

    invoke-direct {v9, p0}, Lcom/android/contacts/list/ContactTileView$4;-><init>(Lcom/android/contacts/list/ContactTileView;)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    :cond_2
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mPushState:Landroid/view/View;

    if-eqz v7, :cond_4

    .line 210
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mPushState:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mPushState:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 212
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mPushState:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 233
    :goto_1
    return-void

    .line 120
    .end local v0           #contextListener:Landroid/view/View$OnCreateContextMenuListener;
    .end local v3           #listener:Landroid/view/View$OnClickListener;
    .end local v4           #mOnKeyListener:Landroid/view/View$OnKeyListener;
    :cond_3
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mCallButtonLayout:Landroid/view/View;

    goto/16 :goto_0

    .line 214
    .restart local v0       #contextListener:Landroid/view/View$OnCreateContextMenuListener;
    .restart local v3       #listener:Landroid/view/View$OnClickListener;
    .restart local v4       #mOnKeyListener:Landroid/view/View$OnKeyListener;
    :cond_4
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-static {v7}, Lcom/android/contacts/util/ThemeUtils;->getSelectableItemBackground(Landroid/content/res/Resources$Theme;)I

    move-result v5

    .line 215
    .local v5, resId:I
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "feature_chn"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 218
    .local v2, isSweepActionSupported:Z
    :goto_2
    if-eqz v2, :cond_6

    .line 219
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mDetailContainer:Landroid/view/View;

    invoke-virtual {v7, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 220
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mDetailContainer:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mDetailContainer:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 222
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mDetailContainer:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_1

    .end local v2           #isSweepActionSupported:Z
    :cond_5
    move v2, v8

    .line 215
    goto :goto_2

    .line 224
    .restart local v2       #isSweepActionSupported:Z
    :cond_6
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "feature_chn"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 226
    :cond_7
    invoke-virtual {p0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 228
    :cond_8
    invoke-virtual {p0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    invoke-virtual {p0, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 230
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_1
.end method

.method public setHorizontalDividerVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mHorizontalDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mHorizontalDivider:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 482
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/contacts/list/ContactTileView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileView;->mListener:Lcom/android/contacts/list/ContactTileView$Listener;

    .line 478
    return-void
.end method

.method public setPhotoManager(Lcom/android/contacts/ContactPhotoManager;)V
    .locals 0
    .parameter "photoManager"

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 362
    return-void
.end method

.method public setVoLTEEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 513
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileView;->mIsVoLTEEnabled:Z

    .line 514
    return-void
.end method
