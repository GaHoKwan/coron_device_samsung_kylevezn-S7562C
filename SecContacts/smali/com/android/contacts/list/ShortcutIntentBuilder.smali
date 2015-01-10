.class public Lcom/android/contacts/list/ShortcutIntentBuilder;
.super Ljava/lang/Object;
.source "ShortcutIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;,
        Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;,
        Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;,
        Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;
    }
.end annotation


# static fields
.field private static final CONTACT_COLUMNS:[Ljava/lang/String;

.field private static final PHONE_COLUMNS:[Ljava/lang/String;

.field private static final PHOTO_COLUMNS:[Ljava/lang/String;


# instance fields
.field private final mBorderColor:I

.field private final mBorderWidth:I

.field private mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

.field private final mContext:Landroid/content/Context;

.field private final mIconDensity:I

.field private mIconSize:I

.field private final mListener:Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "display_name_alt"

    aput-object v1, v0, v4

    const-string v1, "photo_id"

    aput-object v1, v0, v2

    const-string v1, "_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->CONTACT_COLUMNS:[Ljava/lang/String;

    .line 71
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "display_name_alt"

    aput-object v1, v0, v4

    const-string v1, "photo_id"

    aput-object v1, v0, v2

    const-string v1, "data1"

    aput-object v1, v0, v5

    const-string v1, "data2"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->PHONE_COLUMNS:[Ljava/lang/String;

    .line 89
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "data15"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->PHOTO_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mListener:Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 125
    .local v1, r:Landroid/content/res/Resources;
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 127
    .local v0, am:Landroid/app/ActivityManager;
    const v2, 0x7f0c004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    .line 128
    iget v2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    if-nez v2, :cond_0

    .line 129
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    .line 131
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconDensity:I

    .line 132
    const v2, 0x7f0c0052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderWidth:I

    .line 134
    const v2, 0x7f0b0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderColor:I

    .line 135
    new-instance v2, Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v3, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/ShortcutIntentBuilder;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->PHOTO_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->CONTACT_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/ShortcutIntentBuilder;)Lcom/android/contacts/preference/ContactsPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;[BJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/android/contacts/list/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;Ljava/lang/String;[BJ)V

    return-void
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->PHONE_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p9}, Lcom/android/contacts/list/ShortcutIntentBuilder;->createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private createContactShortcutIntent(Landroid/net/Uri;Ljava/lang/String;[BJ)V
    .locals 6
    .parameter "contactUri"
    .parameter "displayName"
    .parameter "bitmapData"
    .parameter "contactId"

    .prologue
    .line 285
    const/4 v4, 0x0

    invoke-direct {p0, p3, p4, p5, v4}, Lcom/android/contacts/list/ShortcutIntentBuilder;->getPhotoBitmap([BJZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 290
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.jcontacts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 292
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.jcontacts.action.QUICK_CONTACT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .local v3, shortcutIntent:Landroid/content/Intent;
    :goto_0
    const/high16 v4, 0x1420

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 301
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 302
    const-string v4, "mode"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    const-string v5, "exclude_mimes"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const/high16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 308
    invoke-direct {p0, v0}, Lcom/android/contacts/list/ShortcutIntentBuilder;->generateQuickContactIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 310
    .local v1, icon:Landroid/graphics/Bitmap;
    if-nez p2, :cond_0

    .line 311
    iget-object v4, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 313
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 314
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 315
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 316
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    iget-object v4, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mListener:Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    invoke-interface {v4, p1, v2}, Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;->onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V

    .line 319
    return-void

    .line 296
    .end local v1           #icon:Landroid/graphics/Bitmap;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #shortcutIntent:Landroid/content/Intent;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3       #shortcutIntent:Landroid/content/Intent;
    goto :goto_0
.end method

.method private createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .parameter "uri"
    .parameter "displayName"
    .parameter "bitmapData"
    .parameter "phoneNumber"
    .parameter "phoneType"
    .parameter "phoneLabel"
    .parameter "shortcutAction"
    .parameter "contactId"

    .prologue
    const/4 v5, 0x0

    .line 323
    const/4 v4, 0x1

    invoke-direct {p0, p3, p8, p9, v4}, Lcom/android/contacts/list/ShortcutIntentBuilder;->getPhotoBitmap([BJZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 326
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const-string v4, "android.intent.action.CALL"

    invoke-virtual {v4, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v4, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 328
    :cond_0
    const-string v4, "tel"

    invoke-static {v4, p4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 329
    .local v2, phoneUri:Landroid/net/Uri;
    const v4, 0x7f02001d

    invoke-direct {p0, v0, p5, p6, v4}, Lcom/android/contacts/list/ShortcutIntentBuilder;->generatePhoneNumberIcon(Landroid/graphics/Bitmap;ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 337
    :goto_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 338
    .local v3, shortcutIntent:Landroid/content/Intent;
    const/high16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 340
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 341
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 342
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 343
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    iget-object v4, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mListener:Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    invoke-interface {v4, p1, v1}, Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;->onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V

    .line 346
    return-void

    .line 332
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #phoneUri:Landroid/net/Uri;
    .end local v3           #shortcutIntent:Landroid/content/Intent;
    :cond_1
    const-string v4, "smsto"

    invoke-static {v4, p4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 333
    .restart local v2       #phoneUri:Landroid/net/Uri;
    const v4, 0x7f02001e

    invoke-direct {p0, v0, p5, p6, v4}, Lcom/android/contacts/list/ShortcutIntentBuilder;->generatePhoneNumberIcon(Landroid/graphics/Bitmap;ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private drawBorder(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "canvas"
    .parameter "dst"

    .prologue
    .line 350
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 351
    .local v0, workPaint:Landroid/graphics/Paint;
    iget v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 355
    iget v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderWidth:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 356
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 357
    return-void
.end method

.method private generatePhoneNumberIcon(Landroid/graphics/Bitmap;ILjava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 26
    .parameter "photo"
    .parameter "phoneType"
    .parameter "phoneLabel"
    .parameter "actionResId"

    .prologue
    .line 398
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 399
    .local v17, r:Landroid/content/res/Resources;
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v10, v5, Landroid/util/DisplayMetrics;->density:F

    .line 401
    .local v10, density:F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconDensity:I

    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    .line 405
    .local v15, phoneIcon:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 406
    .local v13, icon:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 409
    .local v3, canvas:Landroid/graphics/Canvas;
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 410
    .local v16, photoPaint:Landroid/graphics/Paint;
    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 411
    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 412
    new-instance v19, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object/from16 v0, v19

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 413
    .local v19, src:Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    invoke-direct {v11, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 414
    .local v11, dst:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v3, v0, v1, v11, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 416
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11}, Lcom/android/contacts/list/ShortcutIntentBuilder;->drawBorder(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 419
    move-object/from16 v0, v17

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 421
    .local v4, overlay:Ljava/lang/CharSequence;
    if-eqz v4, :cond_0

    .line 422
    new-instance v9, Landroid/text/TextPaint;

    const/16 v5, 0x101

    invoke-direct {v9, v5}, Landroid/text/TextPaint;-><init>(I)V

    .line 424
    .local v9, textPaint:Landroid/text/TextPaint;
    const v5, 0x7f0c0053

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 425
    const/high16 v5, 0x7f0b

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 426
    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 427
    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const v8, 0x7f0b0001

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v9, v5, v6, v7, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 430
    invoke-virtual {v9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    .line 433
    .local v12, fmi:Landroid/graphics/Paint$FontMetricsInt;
    new-instance v24, Landroid/graphics/Paint;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Paint;-><init>()V

    .line 434
    .local v24, workPaint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderColor:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 435
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 436
    const v5, 0x7f0c0054

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v22

    .line 438
    .local v22, textPadding:I
    const v5, 0x7f0c0050

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 439
    .local v20, textBackGroundHeight:I
    const v5, 0x7f0c0051

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 442
    .local v21, textLeftPadding:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderWidth:I

    add-int/lit8 v5, v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    mul-int/lit8 v7, v20, 0x2

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderWidth:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderWidth:I

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderWidth:I

    move/from16 v25, v0

    sub-int v8, v8, v25

    invoke-virtual {v11, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 444
    move-object/from16 v0, v24

    invoke-virtual {v3, v11, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 446
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderWidth:I

    int-to-float v0, v5

    move/from16 v18, v0

    .line 447
    .local v18, sidePadding:F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    int-to-float v5, v5

    const/high16 v6, 0x4000

    mul-float v6, v6, v18

    sub-float/2addr v5, v6

    const/high16 v6, 0x41c8

    mul-float/2addr v6, v10

    float-to-int v6, v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v9, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 449
    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v9, v4, v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v23

    .line 450
    .local v23, textWidth:F
    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    mul-int/lit8 v7, v21, 0x2

    int-to-float v7, v7

    const/high16 v8, 0x4000

    div-float v8, v23, v8

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    div-int/lit8 v25, v20, 0x2

    sub-int v8, v8, v25

    int-to-float v8, v8

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 454
    .end local v9           #textPaint:Landroid/text/TextPaint;
    .end local v12           #fmi:Landroid/graphics/Paint$FontMetricsInt;
    .end local v18           #sidePadding:F
    .end local v20           #textBackGroundHeight:I
    .end local v21           #textLeftPadding:I
    .end local v22           #textPadding:I
    .end local v23           #textWidth:F
    .end local v24           #workPaint:Landroid/graphics/Paint;
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 455
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 456
    .local v14, iconWidth:I
    const/high16 v5, 0x41b8

    mul-float/2addr v5, v10

    float-to-int v5, v5

    sub-int v5, v14, v5

    const/high16 v6, 0x41c8

    mul-float/2addr v6, v10

    float-to-int v6, v6

    sub-int v6, v14, v6

    const/high16 v7, 0x4000

    mul-float/2addr v7, v10

    float-to-int v7, v7

    sub-int v7, v14, v7

    invoke-virtual {v11, v5, v6, v14, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 458
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderWidth:I

    neg-int v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderWidth:I

    invoke-virtual {v11, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 459
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v3, v15, v0, v11, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 461
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 463
    return-object v13
.end method

.method private generateQuickContactIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "photo"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 362
    iget v5, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    iget v6, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 363
    .local v2, icon:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 366
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 367
    .local v3, photoPaint:Landroid/graphics/Paint;
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setDither(Z)V

    .line 368
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 369
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v8, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 370
    .local v4, src:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    iget v6, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    invoke-direct {v1, v8, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 371
    .local v1, dst:Landroid/graphics/Rect;
    invoke-virtual {v0, p1, v4, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 373
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/list/ShortcutIntentBuilder;->drawBorder(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 387
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 389
    return-object v2
.end method

.method private getPhotoBitmap([BJZ)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "bitmapData"
    .parameter "contactId"
    .parameter "phoneNumber"

    .prologue
    const/4 v3, 0x0

    .line 265
    if-eqz p1, :cond_0

    .line 266
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v3, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 280
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 268
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    const-string v1, "shortcut:"

    const-string v2, "default start"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    if-eqz p4, :cond_1

    .line 270
    iget-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v3, v3, p2, p3}, Lcom/android/contacts/ContactPhotoManager;->getDefaultShortCutResId(ZZJ)I

    move-result v2

    iget v3, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconDensity:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 278
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :goto_1
    const-string v1, "shortcut:"

    const-string v2, "default finish"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v3, v3, p2, p3}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarResId(ZZJ)I

    move-result v2

    iget v3, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconDensity:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_1
.end method


# virtual methods
.method public createContactShortcutIntent(Landroid/net/Uri;)V
    .locals 2
    .parameter "contactUri"

    .prologue
    .line 139
    new-instance v0, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;-><init>(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 140
    return-void
.end method

.method public createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .parameter "dataUri"
    .parameter "shortcutAction"

    .prologue
    .line 143
    new-instance v0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;-><init>(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 144
    return-void
.end method
