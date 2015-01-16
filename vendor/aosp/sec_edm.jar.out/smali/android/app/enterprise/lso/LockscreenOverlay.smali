.class public Landroid/app/enterprise/lso/LockscreenOverlay;
.super Ljava/lang/Object;
.source "LockscreenOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;,
        Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;
    }
.end annotation


# static fields
.field public static final DEFAULT_ALPHA_LEVEL:F = 1.0f

.field private static final EMERGENCY_PHONE_LAYER:I = 0x3

.field public static final ERROR_BAD_STATE:I = -0x6

.field public static final ERROR_FAILED:I = -0x4

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_ALLOWED:I = -0x1

.field public static final ERROR_NOT_READY:I = -0x5

.field public static final ERROR_NOT_SUPPORTED:I = -0x3

.field public static final ERROR_PERMISSION_DENIED:I = -0x2

.field public static final ERROR_UNKNOWN:I = -0x7d0

.field private static gLSO:Landroid/app/enterprise/lso/LockscreenOverlay;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLSO:Landroid/app/enterprise/lso/LSOInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 395
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/enterprise/lso/LockscreenOverlay;->mSync:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    iput-object p1, p0, Landroid/app/enterprise/lso/LockscreenOverlay;->mContext:Landroid/content/Context;

    .line 408
    iget-object v0, p0, Landroid/app/enterprise/lso/LockscreenOverlay;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/lso/LSOInterface;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/lso/LSOInterface;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/lso/LockscreenOverlay;->mLSO:Landroid/app/enterprise/lso/LSOInterface;

    .line 409
    return-void
.end method

.method private static createLSOItem_EmergencyPhone(Landroid/content/Context;Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;)Landroid/app/enterprise/lso/LSOItemData;
    .locals 6
    .parameter "context"
    .parameter "phoneInfo"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1413
    new-instance v0, Landroid/app/enterprise/lso/LSOItemContainer;

    invoke-direct {v0}, Landroid/app/enterprise/lso/LSOItemContainer;-><init>()V

    .line 1416
    .local v0, itemContainer:Landroid/app/enterprise/lso/LSOItemContainer;
    iget v2, p1, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    if-lez v2, :cond_0

    .line 1417
    new-instance v2, Landroid/app/enterprise/lso/LSOItemSpace;

    iget v3, p1, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    int-to-float v3, v3

    invoke-direct {v2, v4, v5, v3}, Landroid/app/enterprise/lso/LSOItemSpace;-><init>(IIF)V

    invoke-virtual {v0, v2}, Landroid/app/enterprise/lso/LSOItemContainer;->addItem(Landroid/app/enterprise/lso/LSOItemData;)Z

    .line 1421
    :cond_0
    new-instance v1, Landroid/app/enterprise/lso/LSOItemWidget;

    invoke-direct {v1}, Landroid/app/enterprise/lso/LSOItemWidget;-><init>()V

    .line 1422
    .local v1, lsoItem:Landroid/app/enterprise/lso/LSOItemWidget;
    const-string v2, "com.sec.widget.lso.EmergencyPhoneWidget"

    invoke-virtual {v1, v2}, Landroid/app/enterprise/lso/LSOItemWidget;->setWidget(Ljava/lang/String;)V

    .line 1423
    const-string v2, "epw:phoneNumber"

    iget-object v3, p1, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/lso/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    iget-object v2, p1, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->text:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 1426
    const-string v2, "android:text"

    iget-object v3, p1, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->text:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/lso/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    const-string v2, "android:maxLines"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/lso/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1432
    :goto_0
    iget-object v2, p1, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->icon:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->icon:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1433
    const-string v2, "android:src"

    iget-object v3, p1, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->icon:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/lso/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    :cond_1
    const-string v2, "android:orientation"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/lso/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1436
    const-string v2, "epw:showBG"

    iget-boolean v3, p1, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->showBackground:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/lso/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1437
    const-string v2, "android:topPos"

    iget v3, p1, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/lso/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1438
    const-string v2, "android:bottomPos"

    iget v3, p1, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/lso/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1439
    iget v2, p1, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->gravity:I

    invoke-virtual {v1, v2}, Landroid/app/enterprise/lso/LSOItemData;->setGravity(I)V

    .line 1441
    invoke-virtual {v1, v4, v5}, Landroid/app/enterprise/lso/LSOItemData;->setDimension(II)V

    .line 1442
    iget v2, p1, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    iget v3, p1, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/lso/LSOItemData;->setWeight(F)V

    .line 1443
    invoke-virtual {v0, v1}, Landroid/app/enterprise/lso/LSOItemContainer;->addItem(Landroid/app/enterprise/lso/LSOItemData;)Z

    .line 1446
    iget v2, p1, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    .line 1447
    new-instance v2, Landroid/app/enterprise/lso/LSOItemSpace;

    iget v3, p1, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    rsub-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    invoke-direct {v2, v4, v5, v3}, Landroid/app/enterprise/lso/LSOItemSpace;-><init>(IIF)V

    invoke-virtual {v0, v2}, Landroid/app/enterprise/lso/LSOItemContainer;->addItem(Landroid/app/enterprise/lso/LSOItemData;)Z

    .line 1451
    :cond_2
    const-string v2, "android:alpha"

    const/high16 v3, 0x3f80

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/enterprise/lso/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1452
    const/16 v2, 0x33

    invoke-virtual {v0, v2}, Landroid/app/enterprise/lso/LSOItemData;->setGravity(I)V

    .line 1454
    return-object v0

    .line 1429
    :cond_3
    const-string v2, "epw:showText"

    iget-boolean v3, p1, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->showDefaultText:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/lso/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0
.end method

.method private static createLSOItem_EmergencyPhone(Landroid/content/Context;Ljava/lang/String;)Landroid/app/enterprise/lso/LSOItemData;
    .locals 8
    .parameter "context"
    .parameter "emergencyPhoneNumber"

    .prologue
    const/16 v7, 0x33

    .line 1378
    new-instance v1, Landroid/app/enterprise/lso/LSOItemContainer;

    invoke-direct {v1}, Landroid/app/enterprise/lso/LSOItemContainer;-><init>()V

    .line 1381
    .local v1, itemContainer:Landroid/app/enterprise/lso/LSOItemContainer;
    new-instance v4, Landroid/app/enterprise/lso/LSOItemSpace;

    const/4 v5, -0x1

    const/16 v6, 0xa

    invoke-static {p0, v6}, Landroid/app/enterprise/lso/LSOUtils;->convertDipToPixel(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/app/enterprise/lso/LSOItemSpace;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/app/enterprise/lso/LSOItemContainer;->addItem(Landroid/app/enterprise/lso/LSOItemData;)Z

    .line 1384
    new-instance v2, Landroid/app/enterprise/lso/LSOItemWidget;

    invoke-direct {v2}, Landroid/app/enterprise/lso/LSOItemWidget;-><init>()V

    .line 1385
    .local v2, lsoItem:Landroid/app/enterprise/lso/LSOItemWidget;
    const-string v4, "com.sec.widget.lso.EmergencyPhoneWidget"

    invoke-virtual {v2, v4}, Landroid/app/enterprise/lso/LSOItemWidget;->setWidget(Ljava/lang/String;)V

    .line 1386
    const-string v4, "epw:phoneNumber"

    invoke-virtual {v2, v4, p1}, Landroid/app/enterprise/lso/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    const-string v4, "android:orientation"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/lso/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1388
    const-string v4, "epw:showText"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/lso/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1392
    const/16 v4, 0x64

    invoke-static {p0, v4}, Landroid/app/enterprise/lso/LSOUtils;->convertDipToPixel(Landroid/content/Context;I)I

    move-result v3

    .line 1393
    .local v3, w:I
    const/16 v4, 0xc8

    invoke-static {p0, v4}, Landroid/app/enterprise/lso/LSOUtils;->convertDipToPixel(Landroid/content/Context;I)I

    move-result v0

    .line 1394
    .local v0, h:I
    invoke-virtual {v2, v3, v0}, Landroid/app/enterprise/lso/LSOItemData;->setDimension(II)V

    .line 1395
    invoke-virtual {v2, v7}, Landroid/app/enterprise/lso/LSOItemData;->setGravity(I)V

    .line 1396
    invoke-virtual {v1, v2}, Landroid/app/enterprise/lso/LSOItemContainer;->addItem(Landroid/app/enterprise/lso/LSOItemData;)Z

    .line 1402
    const-string v4, "android:alpha"

    const/high16 v5, 0x3f80

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/app/enterprise/lso/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1403
    invoke-virtual {v1, v7}, Landroid/app/enterprise/lso/LSOItemData;->setGravity(I)V

    .line 1405
    return-object v1
.end method

.method private static createLSOItem_StyleEnterprise(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/lso/LSOItemData;
    .locals 21
    .parameter "context"
    .parameter "enterpriseName"
    .parameter "enterpriseLogo"
    .parameter "enterpriseAddress"
    .parameter "enterprisePhone"

    .prologue
    .line 1261
    const/16 v17, 0xc0

    const/16 v18, 0xc7

    const/16 v19, 0xd1

    invoke-static/range {v17 .. v19}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    .line 1262
    .local v3, DEFAULT_BG_COLOR:I
    const v17, 0x1040219

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/app/enterprise/lso/LSOUtils;->getResourceString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    .line 1263
    .local v11, text1:Ljava/lang/String;
    move-object/from16 v12, p1

    .line 1264
    .local v12, text2:Ljava/lang/String;
    const v17, 0x104021a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/app/enterprise/lso/LSOUtils;->getResourceString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    .line 1266
    .local v13, text3:Ljava/lang/String;
    const v17, 0x104021b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/app/enterprise/lso/LSOUtils;->getResourceString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v14

    .line 1267
    .local v14, text4:Ljava/lang/String;
    move-object/from16 v15, p3

    .line 1268
    .local v15, text5:Ljava/lang/String;
    move-object/from16 v16, p4

    .line 1270
    .local v16, text6:Ljava/lang/String;
    new-instance v7, Landroid/app/enterprise/lso/LSOItemContainer;

    invoke-direct {v7}, Landroid/app/enterprise/lso/LSOItemContainer;-><init>()V

    .line 1273
    .local v7, itemContainer:Landroid/app/enterprise/lso/LSOItemContainer;
    new-instance v17, Landroid/app/enterprise/lso/LSOItemSpace;

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/high16 v20, 0x4120

    invoke-direct/range {v17 .. v20}, Landroid/app/enterprise/lso/LSOItemSpace;-><init>(IIF)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/app/enterprise/lso/LSOItemContainer;->addItem(Landroid/app/enterprise/lso/LSOItemData;)Z

    .line 1276
    new-instance v8, Landroid/app/enterprise/lso/LSOItemContainer;

    invoke-direct {v8}, Landroid/app/enterprise/lso/LSOItemContainer;-><init>()V

    .line 1278
    .local v8, itemData:Landroid/app/enterprise/lso/LSOItemContainer;
    new-instance v4, Landroid/app/enterprise/lso/LSOItemContainer;

    invoke-direct {v4}, Landroid/app/enterprise/lso/LSOItemContainer;-><init>()V

    .line 1279
    .local v4, innerContainer:Landroid/app/enterprise/lso/LSOItemContainer;
    new-instance v10, Landroid/app/enterprise/lso/LSOItemText;

    invoke-direct {v10, v11}, Landroid/app/enterprise/lso/LSOItemText;-><init>(Ljava/lang/String;)V

    .line 1280
    .local v10, lsoText:Landroid/app/enterprise/lso/LSOItemText;
    const/16 v17, 0x11

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/app/enterprise/lso/LSOItemData;->setGravity(I)V

    .line 1281
    invoke-virtual {v4, v10}, Landroid/app/enterprise/lso/LSOItemContainer;->addItem(Landroid/app/enterprise/lso/LSOItemData;)Z

    .line 1283
    if-eqz p2, :cond_0

    .line 1284
    new-instance v9, Landroid/app/enterprise/lso/LSOItemImage;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Landroid/app/enterprise/lso/LSOItemImage;-><init>(Ljava/lang/String;)V

    .line 1285
    .local v9, itemImage:Landroid/app/enterprise/lso/LSOItemImage;
    const/16 v17, -0x1

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->setDimension(II)V

    .line 1286
    const-string v17, "android:maxHeight"

    const/16 v18, 0x4b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/app/enterprise/lso/LSOUtils;->convertDipToPixel(Landroid/content/Context;I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1288
    invoke-virtual {v4, v9}, Landroid/app/enterprise/lso/LSOItemContainer;->addItem(Landroid/app/enterprise/lso/LSOItemData;)Z

    .line 1291
    .end local v9           #itemImage:Landroid/app/enterprise/lso/LSOItemImage;
    :cond_0
    new-instance v10, Landroid/app/enterprise/lso/LSOItemText;

    .end local v10           #lsoText:Landroid/app/enterprise/lso/LSOItemText;
    invoke-direct {v10, v12}, Landroid/app/enterprise/lso/LSOItemText;-><init>(Ljava/lang/String;)V

    .line 1292
    .restart local v10       #lsoText:Landroid/app/enterprise/lso/LSOItemText;
    sget-object v17, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->LARGE:Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/app/enterprise/lso/LSOItemText;->setTextSize(Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;)V

    .line 1293
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/app/enterprise/lso/LSOItemText;->setTextStyle(I)V

    .line 1294
    const/16 v17, 0x11

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/app/enterprise/lso/LSOItemData;->setGravity(I)V

    .line 1295
    invoke-virtual {v4, v10}, Landroid/app/enterprise/lso/LSOItemContainer;->addItem(Landroid/app/enterprise/lso/LSOItemData;)Z

    .line 1297
    new-instance v10, Landroid/app/enterprise/lso/LSOItemText;

    .end local v10           #lsoText:Landroid/app/enterprise/lso/LSOItemText;
    invoke-direct {v10, v13}, Landroid/app/enterprise/lso/LSOItemText;-><init>(Ljava/lang/String;)V

    .line 1298
    .restart local v10       #lsoText:Landroid/app/enterprise/lso/LSOItemText;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/app/enterprise/lso/LSOItemText;->setTextStyle(I)V

    .line 1299
    const/16 v17, 0x11

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/app/enterprise/lso/LSOItemData;->setGravity(I)V

    .line 1300
    invoke-virtual {v4, v10}, Landroid/app/enterprise/lso/LSOItemContainer;->addItem(Landroid/app/enterprise/lso/LSOItemData;)Z

    .line 1302
    invoke-virtual {v4, v3}, Landroid/app/enterprise/lso/LSOItemData;->setBgColor(I)V

    .line 1303
    const/16 v17, -0x1

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->setDimension(II)V

    .line 1304
    invoke-virtual {v8, v4}, Landroid/app/enterprise/lso/LSOItemContainer;->addItem(Landroid/app/enterprise/lso/LSOItemData;)Z

    .line 1306
    const/16 v17, 0x11

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/app/enterprise/lso/LSOItemData;->setGravity(I)V

    .line 1307
    const/16 v17, -0x1

    const/16 v18, 0x0

    const/high16 v19, 0x4230

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v8, v0, v1, v2}, Landroid/app/enterprise/lso/LSOItemData;->setDimension(IIF)V

    .line 1308
    invoke-virtual {v7, v8}, Landroid/app/enterprise/lso/LSOItemContainer;->addItem(Landroid/app/enterprise/lso/LSOItemData;)Z

    .line 1311
    new-instance v17, Landroid/app/enterprise/lso/LSOItemSpace;

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/high16 v20, 0x4120

    invoke-direct/range {v17 .. v20}, Landroid/app/enterprise/lso/LSOItemSpace;-><init>(IIF)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/app/enterprise/lso/LSOItemContainer;->addItem(Landroid/app/enterprise/lso/LSOItemData;)Z

    .line 1314
    new-instance v8, Landroid/app/enterprise/lso/LSOItemContainer;

    .end local v8           #itemData:Landroid/app/enterprise/lso/LSOItemContainer;
    invoke-direct {v8}, Landroid/app/enterprise/lso/LSOItemContainer;-><init>()V

    .line 1316
    .restart local v8       #itemData:Landroid/app/enterprise/lso/LSOItemContainer;
    new-instance v4, Landroid/app/enterprise/lso/LSOItemContainer;

    .end local v4           #innerContainer:Landroid/app/enterprise/lso/LSOItemContainer;
    invoke-direct {v4}, Landroid/app/enterprise/lso/LSOItemContainer;-><init>()V

    .line 1317
    .restart local v4       #innerContainer:Landroid/app/enterprise/lso/LSOItemContainer;
    sget-object v17, Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;->HORIZONTAL:Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/enterprise/lso/LSOItemContainer;->setOrientation(Landroid/app/enterprise/lso/LSOItemContainer$ORIENTATION;)V

    .line 1319
    new-instance v10, Landroid/app/enterprise/lso/LSOItemText;

    .end local v10           #lsoText:Landroid/app/enterprise/lso/LSOItemText;
    invoke-direct {v10, v14}, Landroid/app/enterprise/lso/LSOItemText;-><init>(Ljava/lang/String;)V

    .line 1320
    .restart local v10       #lsoText:Landroid/app/enterprise/lso/LSOItemText;
    const/16 v17, 0x0

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->setDimension(II)V

    .line 1321
    const v17, 0x3f19999a

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/app/enterprise/lso/LSOItemData;->setWeight(F)V

    .line 1322
    sget-object v17, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->SMALL:Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/app/enterprise/lso/LSOItemText;->setTextSize(Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;)V

    .line 1323
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/app/enterprise/lso/LSOItemText;->setTextStyle(I)V

    .line 1324
    const/16 v17, 0x11

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/app/enterprise/lso/LSOItemData;->setGravity(I)V

    .line 1325
    const-string v17, "android:maxLines"

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1326
    invoke-virtual {v4, v10}, Landroid/app/enterprise/lso/LSOItemContainer;->addItem(Landroid/app/enterprise/lso/LSOItemData;)Z

    .line 1329
    new-instance v5, Landroid/app/enterprise/lso/LSOItemContainer;

    invoke-direct {v5}, Landroid/app/enterprise/lso/LSOItemContainer;-><init>()V

    .line 1330
    .local v5, innerContainer2:Landroid/app/enterprise/lso/LSOItemContainer;
    const/16 v17, 0x0

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->setDimension(II)V

    .line 1331
    const/high16 v17, 0x3f80

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/app/enterprise/lso/LSOItemData;->setWeight(F)V

    .line 1332
    const/16 v17, 0x11

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/app/enterprise/lso/LSOItemData;->setGravity(I)V

    .line 1335
    new-instance v6, Landroid/app/enterprise/lso/LSOItemContainer;

    invoke-direct {v6}, Landroid/app/enterprise/lso/LSOItemContainer;-><init>()V

    .line 1336
    .local v6, innerContainer3:Landroid/app/enterprise/lso/LSOItemContainer;
    const/16 v17, -0x2

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->setDimension(II)V

    .line 1338
    const/16 v17, 0x11

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/enterprise/lso/LSOItemData;->setGravity(I)V

    .line 1340
    new-instance v10, Landroid/app/enterprise/lso/LSOItemText;

    .end local v10           #lsoText:Landroid/app/enterprise/lso/LSOItemText;
    invoke-direct {v10, v15}, Landroid/app/enterprise/lso/LSOItemText;-><init>(Ljava/lang/String;)V

    .line 1341
    .restart local v10       #lsoText:Landroid/app/enterprise/lso/LSOItemText;
    sget-object v17, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->SMALL:Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/app/enterprise/lso/LSOItemText;->setTextSize(Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;)V

    .line 1342
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/app/enterprise/lso/LSOItemText;->setTextStyle(I)V

    .line 1343
    const-string v17, "android:maxLines"

    const/16 v18, 0x3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1344
    invoke-virtual {v6, v10}, Landroid/app/enterprise/lso/LSOItemContainer;->addItem(Landroid/app/enterprise/lso/LSOItemData;)Z

    .line 1346
    new-instance v10, Landroid/app/enterprise/lso/LSOItemText;

    .end local v10           #lsoText:Landroid/app/enterprise/lso/LSOItemText;
    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/app/enterprise/lso/LSOItemText;-><init>(Ljava/lang/String;)V

    .line 1347
    .restart local v10       #lsoText:Landroid/app/enterprise/lso/LSOItemText;
    sget-object v17, Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;->SMALL:Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/app/enterprise/lso/LSOItemText;->setTextSize(Landroid/app/enterprise/lso/LSOItemText$LSOTextSize;)V

    .line 1348
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/app/enterprise/lso/LSOItemText;->setTextStyle(I)V

    .line 1349
    const-string v17, "android:singleLine"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1350
    invoke-virtual {v6, v10}, Landroid/app/enterprise/lso/LSOItemContainer;->addItem(Landroid/app/enterprise/lso/LSOItemData;)Z

    .line 1352
    invoke-virtual {v5, v6}, Landroid/app/enterprise/lso/LSOItemContainer;->addItem(Landroid/app/enterprise/lso/LSOItemData;)Z

    .line 1355
    invoke-virtual {v4, v5}, Landroid/app/enterprise/lso/LSOItemContainer;->addItem(Landroid/app/enterprise/lso/LSOItemData;)Z

    .line 1358
    const/16 v17, -0x1

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->setDimension(II)V

    .line 1359
    invoke-virtual {v4, v3}, Landroid/app/enterprise/lso/LSOItemData;->setBgColor(I)V

    .line 1360
    const/16 v17, 0x11

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/enterprise/lso/LSOItemData;->setGravity(I)V

    .line 1361
    invoke-virtual {v8, v4}, Landroid/app/enterprise/lso/LSOItemContainer;->addItem(Landroid/app/enterprise/lso/LSOItemData;)Z

    .line 1363
    const/16 v17, 0x30

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/app/enterprise/lso/LSOItemData;->setGravity(I)V

    .line 1364
    const/16 v17, -0x1

    const/16 v18, 0x0

    const/high16 v19, 0x41f0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v8, v0, v1, v2}, Landroid/app/enterprise/lso/LSOItemData;->setDimension(IIF)V

    .line 1365
    invoke-virtual {v7, v8}, Landroid/app/enterprise/lso/LSOItemContainer;->addItem(Landroid/app/enterprise/lso/LSOItemData;)Z

    .line 1368
    new-instance v17, Landroid/app/enterprise/lso/LSOItemSpace;

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/high16 v20, 0x40c0

    invoke-direct/range {v17 .. v20}, Landroid/app/enterprise/lso/LSOItemSpace;-><init>(IIF)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/app/enterprise/lso/LSOItemContainer;->addItem(Landroid/app/enterprise/lso/LSOItemData;)Z

    .line 1370
    return-object v7
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/app/enterprise/lso/LockscreenOverlay;
    .locals 3
    .parameter "context"

    .prologue
    .line 425
    sget-object v1, Landroid/app/enterprise/lso/LockscreenOverlay;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 426
    :try_start_0
    sget-object v0, Landroid/app/enterprise/lso/LockscreenOverlay;->gLSO:Landroid/app/enterprise/lso/LockscreenOverlay;

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Landroid/app/enterprise/lso/LockscreenOverlay;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/enterprise/lso/LockscreenOverlay;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/app/enterprise/lso/LockscreenOverlay;->gLSO:Landroid/app/enterprise/lso/LockscreenOverlay;

    .line 429
    :cond_0
    sget-object v0, Landroid/app/enterprise/lso/LockscreenOverlay;->gLSO:Landroid/app/enterprise/lso/LockscreenOverlay;

    monitor-exit v1

    return-object v0

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static parseLSOItem_EmergencyPhoneInfo(Landroid/content/Context;Landroid/app/enterprise/lso/LSOItemData;)Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;
    .locals 9
    .parameter "context"
    .parameter "itemData"

    .prologue
    const/4 v6, 0x0

    .line 1462
    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getType()B

    move-result v7

    const/4 v8, 0x4

    if-eq v7, v8, :cond_1

    .line 1521
    :cond_0
    :goto_0
    return-object v6

    :cond_1
    move-object v3, p1

    .line 1466
    check-cast v3, Landroid/app/enterprise/lso/LSOItemContainer;

    .line 1467
    .local v3, itemContainer:Landroid/app/enterprise/lso/LSOItemContainer;
    const/4 v4, 0x0

    .line 1469
    .local v4, lsoWidget:Landroid/app/enterprise/lso/LSOItemWidget;
    invoke-virtual {v3}, Landroid/app/enterprise/lso/LSOItemContainer;->getNumItems()I

    move-result v5

    .line 1470
    .local v5, numChild:I
    const/4 v1, 0x0

    .line 1471
    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_2

    if-nez v4, :cond_2

    .line 1472
    invoke-virtual {v3, v1}, Landroid/app/enterprise/lso/LSOItemContainer;->getItem(I)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v2

    .line 1473
    .local v2, item:Landroid/app/enterprise/lso/LSOItemData;
    invoke-virtual {v2}, Landroid/app/enterprise/lso/LSOItemData;->getType()B

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_9

    move-object v4, v2

    .line 1474
    check-cast v4, Landroid/app/enterprise/lso/LSOItemWidget;

    .line 1480
    .end local v2           #item:Landroid/app/enterprise/lso/LSOItemData;
    :cond_2
    if-eqz v4, :cond_0

    .line 1484
    invoke-virtual {v4}, Landroid/app/enterprise/lso/LSOItemData;->getAttrs()Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v0

    .line 1485
    .local v0, attr:Landroid/app/enterprise/lso/LSOAttributeSet;
    if-eqz v0, :cond_0

    .line 1489
    new-instance v6, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;

    const-string v7, ""

    invoke-direct {v6, v7}, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;-><init>(Ljava/lang/String;)V

    .line 1491
    .local v6, phoneInfo:Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;
    invoke-virtual {v4}, Landroid/app/enterprise/lso/LSOItemData;->getGravity()I

    move-result v7

    iput v7, v6, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->gravity:I

    .line 1493
    const-string v7, "epw:phoneNumber"

    invoke-virtual {v0, v7}, Landroid/app/enterprise/lso/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1494
    const-string v7, "epw:phoneNumber"

    invoke-virtual {v0, v7}, Landroid/app/enterprise/lso/LSOAttributeSet;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->phoneNumber:Ljava/lang/String;

    .line 1497
    :cond_3
    const-string v7, "android:text"

    invoke-virtual {v0, v7}, Landroid/app/enterprise/lso/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1498
    const-string v7, "android:text"

    invoke-virtual {v0, v7}, Landroid/app/enterprise/lso/LSOAttributeSet;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->text:Ljava/lang/String;

    .line 1501
    :cond_4
    const-string v7, "android:src"

    invoke-virtual {v0, v7}, Landroid/app/enterprise/lso/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1502
    const-string v7, "android:src"

    invoke-virtual {v0, v7}, Landroid/app/enterprise/lso/LSOAttributeSet;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->icon:Ljava/lang/String;

    .line 1505
    :cond_5
    const-string v7, "android:topPos"

    invoke-virtual {v0, v7}, Landroid/app/enterprise/lso/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1506
    const-string v7, "android:topPos"

    invoke-virtual {v0, v7}, Landroid/app/enterprise/lso/LSOAttributeSet;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    .line 1509
    :cond_6
    const-string v7, "android:bottomPos"

    invoke-virtual {v0, v7}, Landroid/app/enterprise/lso/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1510
    const-string v7, "android:bottomPos"

    invoke-virtual {v0, v7}, Landroid/app/enterprise/lso/LSOAttributeSet;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    .line 1513
    :cond_7
    const-string v7, "epw:showBG"

    invoke-virtual {v0, v7}, Landroid/app/enterprise/lso/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1514
    const-string v7, "epw:showBG"

    invoke-virtual {v0, v7}, Landroid/app/enterprise/lso/LSOAttributeSet;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, v6, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->showBackground:Z

    .line 1517
    :cond_8
    const-string v7, "epw:showText"

    invoke-virtual {v0, v7}, Landroid/app/enterprise/lso/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1518
    const-string v7, "epw:showText"

    invoke-virtual {v0, v7}, Landroid/app/enterprise/lso/LSOAttributeSet;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, v6, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->showDefaultText:Z

    goto/16 :goto_0

    .line 1477
    .end local v0           #attr:Landroid/app/enterprise/lso/LSOAttributeSet;
    .end local v6           #phoneInfo:Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;
    .restart local v2       #item:Landroid/app/enterprise/lso/LSOItemData;
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 1478
    goto/16 :goto_1
.end method


# virtual methods
.method public canConfigure()Z
    .locals 2

    .prologue
    .line 1164
    const-string v0, "LockscreenOverlay.canConfigure"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1165
    iget-object v0, p0, Landroid/app/enterprise/lso/LockscreenOverlay;->mLSO:Landroid/app/enterprise/lso/LSOInterface;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/lso/LSOInterface;->canConfigure(I)Z

    move-result v0

    return v0
.end method

.method public configure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "enterpriseName"
    .parameter "enterpriseLogo"
    .parameter "enterpriseAddress"
    .parameter "enterprisePhone"

    .prologue
    .line 486
    const-string v1, "LockscreenOverlay.configure"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 487
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 489
    :cond_0
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "Name and Address cannot be null"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 492
    :cond_1
    iget-object v1, p0, Landroid/app/enterprise/lso/LockscreenOverlay;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, p3, p4}, Landroid/app/enterprise/lso/LockscreenOverlay;->createLSOItem_StyleEnterprise(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v0

    .line 494
    .local v0, lsoData:Landroid/app/enterprise/lso/LSOItemData;
    if-eqz v0, :cond_2

    .line 495
    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LockscreenOverlay;->setData(Landroid/app/enterprise/lso/LSOItemData;)I

    move-result v1

    .line 498
    :goto_0
    return v1

    :cond_2
    const/16 v1, -0x7d0

    goto :goto_0
.end method

.method public configure([Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;)I
    .locals 11
    .parameter "imageList"

    .prologue
    const/16 v10, 0x64

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 567
    const-string v6, "LockscreenOverlay.configure"

    invoke-static {v6}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 568
    if-eqz p1, :cond_0

    array-length v6, p1

    if-nez v6, :cond_1

    .line 569
    :cond_0
    new-instance v6, Ljava/security/InvalidParameterException;

    const-string v7, "Invalid argument list - List is empty"

    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 572
    :cond_1
    array-length v6, p1

    add-int/lit8 v4, v6, -0x1

    .line 574
    .local v4, lastIdx:I
    aget-object v6, p1, v9

    iget v6, v6, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->topPosition:I

    if-ltz v6, :cond_2

    aget-object v6, p1, v4

    iget v6, v6, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->bottomPosition:I

    if-gt v6, v10, :cond_2

    aget-object v6, p1, v4

    iget v6, v6, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->bottomPosition:I

    aget-object v7, p1, v4

    iget v7, v7, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->topPosition:I

    if-gt v6, v7, :cond_3

    .line 576
    :cond_2
    new-instance v6, Ljava/security/InvalidParameterException;

    const-string v7, "Invalid argument list - Item[0] top position is less than 0, Item[last_index] is greater than 100, or position of Item[0] > Item[last_index]"

    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 580
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_6

    .line 581
    aget-object v6, p1, v0

    iget v6, v6, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->bottomPosition:I

    aget-object v7, p1, v0

    iget v7, v7, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->topPosition:I

    if-le v6, v7, :cond_4

    aget-object v6, p1, v0

    iget v6, v6, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->bottomPosition:I

    add-int/lit8 v7, v0, 0x1

    aget-object v7, p1, v7

    iget v7, v7, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->topPosition:I

    if-le v6, v7, :cond_5

    .line 583
    :cond_4
    new-instance v6, Ljava/security/InvalidParameterException;

    const-string v7, "Invalid argument list - Item[i] top > bottom or Item[i+1] top < Item[i] bottom"

    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 580
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 588
    :cond_6
    new-instance v1, Landroid/app/enterprise/lso/LSOItemContainer;

    invoke-direct {v1}, Landroid/app/enterprise/lso/LSOItemContainer;-><init>()V

    .line 589
    .local v1, itemContainer:Landroid/app/enterprise/lso/LSOItemContainer;
    invoke-virtual {v1, v8, v8}, Landroid/app/enterprise/lso/LSOItemData;->setDimension(II)V

    .line 591
    const/4 v5, 0x0

    .line 592
    .local v5, topPos:I
    const/4 v0, 0x0

    :goto_1
    array-length v6, p1

    if-ge v0, v6, :cond_8

    .line 593
    aget-object v6, p1, v0

    iget v6, v6, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->topPosition:I

    if-ge v5, v6, :cond_7

    .line 594
    new-instance v3, Landroid/app/enterprise/lso/LSOItemSpace;

    aget-object v6, p1, v0

    iget v6, v6, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->topPosition:I

    sub-int/2addr v6, v5

    int-to-float v6, v6

    invoke-direct {v3, v8, v9, v6}, Landroid/app/enterprise/lso/LSOItemSpace;-><init>(IIF)V

    .line 596
    .local v3, itemSpace:Landroid/app/enterprise/lso/LSOItemSpace;
    invoke-virtual {v1, v3}, Landroid/app/enterprise/lso/LSOItemContainer;->addItem(Landroid/app/enterprise/lso/LSOItemData;)Z

    .line 599
    .end local v3           #itemSpace:Landroid/app/enterprise/lso/LSOItemSpace;
    :cond_7
    new-instance v2, Landroid/app/enterprise/lso/LSOItemImage;

    aget-object v6, p1, v0

    iget-object v6, v6, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->filePath:Ljava/lang/String;

    invoke-direct {v2, v6}, Landroid/app/enterprise/lso/LSOItemImage;-><init>(Ljava/lang/String;)V

    .line 600
    .local v2, itemImage:Landroid/app/enterprise/lso/LSOItemImage;
    aget-object v6, p1, v0

    iget v6, v6, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->bottomPosition:I

    aget-object v7, p1, v0

    iget v7, v7, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->topPosition:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v2, v8, v9, v6}, Landroid/app/enterprise/lso/LSOItemData;->setDimension(IIF)V

    .line 602
    aget-object v6, p1, v0

    iget-object v6, v6, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v6}, Landroid/app/enterprise/lso/LSOItemImage;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 603
    invoke-virtual {v1, v2}, Landroid/app/enterprise/lso/LSOItemContainer;->addItem(Landroid/app/enterprise/lso/LSOItemData;)Z

    .line 605
    aget-object v6, p1, v0

    iget v5, v6, Landroid/app/enterprise/lso/LockscreenOverlay$LSOImage;->bottomPosition:I

    .line 592
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 608
    .end local v2           #itemImage:Landroid/app/enterprise/lso/LSOItemImage;
    :cond_8
    if-ge v5, v10, :cond_9

    .line 609
    new-instance v6, Landroid/app/enterprise/lso/LSOItemSpace;

    rsub-int/lit8 v7, v5, 0x64

    int-to-float v7, v7

    invoke-direct {v6, v8, v9, v7}, Landroid/app/enterprise/lso/LSOItemSpace;-><init>(IIF)V

    invoke-virtual {v1, v6}, Landroid/app/enterprise/lso/LSOItemContainer;->addItem(Landroid/app/enterprise/lso/LSOItemData;)Z

    .line 612
    :cond_9
    invoke-virtual {p0, v1}, Landroid/app/enterprise/lso/LockscreenOverlay;->setData(Landroid/app/enterprise/lso/LSOItemData;)I

    move-result v6

    return v6
.end method

.method public getAlpha()F
    .locals 2

    .prologue
    .line 1096
    const-string v1, "LockscreenOverlay.getAlpha"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1097
    iget-object v1, p0, Landroid/app/enterprise/lso/LockscreenOverlay;->mLSO:Landroid/app/enterprise/lso/LSOInterface;

    invoke-virtual {v1}, Landroid/app/enterprise/lso/LSOInterface;->getPreferences()Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v0

    .line 1098
    .local v0, attrSet:Landroid/app/enterprise/lso/LSOAttributeSet;
    if-eqz v0, :cond_0

    .line 1099
    const-string v1, "android:alpha"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/lso/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1100
    const-string v1, "android:alpha"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/lso/LSOAttributeSet;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1104
    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public getData()Landroid/app/enterprise/lso/LSOItemData;
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Landroid/app/enterprise/lso/LockscreenOverlay;->mLSO:Landroid/app/enterprise/lso/LSOInterface;

    invoke-virtual {v0}, Landroid/app/enterprise/lso/LSOInterface;->getData()Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v0

    return-object v0
.end method

.method public getData(I)Landroid/app/enterprise/lso/LSOItemData;
    .locals 1
    .parameter "layer"

    .prologue
    .line 1252
    iget-object v0, p0, Landroid/app/enterprise/lso/LockscreenOverlay;->mLSO:Landroid/app/enterprise/lso/LSOInterface;

    invoke-virtual {v0, p1}, Landroid/app/enterprise/lso/LSOInterface;->getData(I)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v0

    return-object v0
.end method

.method public getEmergencyPhone()Ljava/lang/String;
    .locals 2

    .prologue
    .line 822
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/app/enterprise/lso/LockscreenOverlay;->getData(I)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v0

    .line 823
    .local v0, itemData:Landroid/app/enterprise/lso/LSOItemData;
    if-eqz v0, :cond_0

    .line 824
    invoke-virtual {v0}, Landroid/app/enterprise/lso/LSOItemData;->getId()Ljava/lang/String;

    move-result-object v1

    .line 827
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEmergencyPhoneInfo()Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;
    .locals 2

    .prologue
    .line 862
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/app/enterprise/lso/LockscreenOverlay;->getData(I)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v0

    .line 863
    .local v0, itemData:Landroid/app/enterprise/lso/LSOItemData;
    if-eqz v0, :cond_0

    .line 864
    iget-object v1, p0, Landroid/app/enterprise/lso/LockscreenOverlay;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/app/enterprise/lso/LockscreenOverlay;->parseLSOItem_EmergencyPhoneInfo(Landroid/content/Context;Landroid/app/enterprise/lso/LSOItemData;)Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;

    move-result-object v1

    .line 867
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isConfigured()Z
    .locals 2

    .prologue
    .line 1133
    const-string v0, "LockscreenOverlay.isConfigured"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1134
    iget-object v0, p0, Landroid/app/enterprise/lso/LockscreenOverlay;->mLSO:Landroid/app/enterprise/lso/LSOInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/enterprise/lso/LSOInterface;->isConfigured(I)Z

    move-result v0

    return v0
.end method

.method public removeEmergencyPhone()V
    .locals 1

    .prologue
    .line 1019
    const-string v0, "LockscreenOverlay.removeEmergencyPhone"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1020
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/enterprise/lso/LockscreenOverlay;->resetData(I)V

    .line 1021
    return-void
.end method

.method public resetAll()V
    .locals 1

    .prologue
    .line 907
    const-string v0, "LockscreenOverlay.resetAll"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 908
    iget-object v0, p0, Landroid/app/enterprise/lso/LockscreenOverlay;->mLSO:Landroid/app/enterprise/lso/LSOInterface;

    invoke-virtual {v0}, Landroid/app/enterprise/lso/LSOInterface;->reset()V

    .line 909
    invoke-virtual {p0}, Landroid/app/enterprise/lso/LockscreenOverlay;->resetWallpaper()V

    .line 910
    return-void
.end method

.method public resetData(I)V
    .locals 1
    .parameter "layer"

    .prologue
    .line 954
    iget-object v0, p0, Landroid/app/enterprise/lso/LockscreenOverlay;->mLSO:Landroid/app/enterprise/lso/LSOInterface;

    invoke-virtual {v0, p1}, Landroid/app/enterprise/lso/LSOInterface;->resetData(I)V

    .line 955
    return-void
.end method

.method public resetOverlay()V
    .locals 1

    .prologue
    .line 946
    const-string v0, "LockscreenOverlay.resetOverlay"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 947
    iget-object v0, p0, Landroid/app/enterprise/lso/LockscreenOverlay;->mLSO:Landroid/app/enterprise/lso/LSOInterface;

    invoke-virtual {v0}, Landroid/app/enterprise/lso/LSOInterface;->resetData()V

    .line 948
    return-void
.end method

.method public resetWallpaper()V
    .locals 1

    .prologue
    .line 987
    const-string v0, "LockscreenOverlay.resetWallpaper"

    invoke-static {v0}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 988
    iget-object v0, p0, Landroid/app/enterprise/lso/LockscreenOverlay;->mLSO:Landroid/app/enterprise/lso/LSOInterface;

    invoke-virtual {v0}, Landroid/app/enterprise/lso/LSOInterface;->resetWallpaper()V

    .line 989
    return-void
.end method

.method public setAlpha(F)I
    .locals 3
    .parameter "alphaLevel"

    .prologue
    .line 1064
    const-string v1, "LockscreenOverlay.setAlpha"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 1065
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x3f80

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    .line 1066
    :cond_0
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "Alpha values must be in between 0 to 1"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1069
    :cond_1
    iget-object v1, p0, Landroid/app/enterprise/lso/LockscreenOverlay;->mLSO:Landroid/app/enterprise/lso/LSOInterface;

    invoke-virtual {v1}, Landroid/app/enterprise/lso/LSOInterface;->getPreferences()Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v0

    .line 1070
    .local v0, attrSet:Landroid/app/enterprise/lso/LSOAttributeSet;
    if-nez v0, :cond_2

    .line 1071
    new-instance v0, Landroid/app/enterprise/lso/LSOAttributeSet;

    .end local v0           #attrSet:Landroid/app/enterprise/lso/LSOAttributeSet;
    invoke-direct {v0}, Landroid/app/enterprise/lso/LSOAttributeSet;-><init>()V

    .line 1074
    .restart local v0       #attrSet:Landroid/app/enterprise/lso/LSOAttributeSet;
    :cond_2
    const-string v1, "android:alpha"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/lso/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1075
    iget-object v1, p0, Landroid/app/enterprise/lso/LockscreenOverlay;->mLSO:Landroid/app/enterprise/lso/LSOInterface;

    invoke-virtual {v1, v0}, Landroid/app/enterprise/lso/LSOInterface;->setPreferences(Landroid/app/enterprise/lso/LSOAttributeSet;)I

    move-result v1

    return v1
.end method

.method public setData(Landroid/app/enterprise/lso/LSOItemData;)I
    .locals 1
    .parameter "lsoData"

    .prologue
    .line 1208
    iget-object v0, p0, Landroid/app/enterprise/lso/LockscreenOverlay;->mLSO:Landroid/app/enterprise/lso/LSOInterface;

    invoke-virtual {v0, p1}, Landroid/app/enterprise/lso/LSOInterface;->setData(Landroid/app/enterprise/lso/LSOItemData;)I

    move-result v0

    return v0
.end method

.method public setData(Landroid/app/enterprise/lso/LSOItemData;I)I
    .locals 1
    .parameter "lsoData"
    .parameter "layer"

    .prologue
    .line 1215
    iget-object v0, p0, Landroid/app/enterprise/lso/LockscreenOverlay;->mLSO:Landroid/app/enterprise/lso/LSOInterface;

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/lso/LSOInterface;->setData(Landroid/app/enterprise/lso/LSOItemData;I)I

    move-result v0

    return v0
.end method

.method public setEmergencyPhone(Ljava/lang/String;)I
    .locals 3
    .parameter "emergencyPhoneNumber"

    .prologue
    .line 709
    const-string v1, "LockscreenOverlay.setEmergencyPhone"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 711
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 712
    :cond_0
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "Emergency/Support phone cannot be null"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 715
    :cond_1
    iget-object v1, p0, Landroid/app/enterprise/lso/LockscreenOverlay;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/app/enterprise/lso/LockscreenOverlay;->createLSOItem_EmergencyPhone(Landroid/content/Context;Ljava/lang/String;)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v0

    .line 716
    .local v0, itemData:Landroid/app/enterprise/lso/LSOItemData;
    invoke-virtual {v0, p1}, Landroid/app/enterprise/lso/LSOItemData;->setId(Ljava/lang/String;)V

    .line 718
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/lso/LockscreenOverlay;->setData(Landroid/app/enterprise/lso/LSOItemData;I)I

    move-result v1

    return v1
.end method

.method public setEmergencyPhoneInfo(Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;)I
    .locals 3
    .parameter "phoneInfo"

    .prologue
    .line 773
    const-string v1, "LockscreenOverlay.setEmergencyPhoneInfo"

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->log(Ljava/lang/String;)V

    .line 774
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 776
    :cond_0
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "Emergency/Support phone cannot be null"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 780
    :cond_1
    iget v1, p1, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    if-ltz v1, :cond_2

    iget v1, p1, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    const/16 v2, 0x64

    if-gt v1, v2, :cond_2

    iget v1, p1, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    iget v2, p1, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    if-gt v1, v2, :cond_3

    .line 782
    :cond_2
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "Invalid argument list"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 785
    :cond_3
    iget-object v1, p0, Landroid/app/enterprise/lso/LockscreenOverlay;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/app/enterprise/lso/LockscreenOverlay;->createLSOItem_EmergencyPhone(Landroid/content/Context;Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v0

    .line 786
    .local v0, itemData:Landroid/app/enterprise/lso/LSOItemData;
    iget-object v1, p1, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/enterprise/lso/LSOItemData;->setId(Ljava/lang/String;)V

    .line 788
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/lso/LockscreenOverlay;->setData(Landroid/app/enterprise/lso/LSOItemData;I)I

    move-result v1

    return v1
.end method

.method public setWallpaper(Ljava/lang/String;)I
    .locals 2
    .parameter "enterpriseWallpaper"

    .prologue
    .line 659
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 660
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Wallpaper cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_1
    iget-object v0, p0, Landroid/app/enterprise/lso/LockscreenOverlay;->mLSO:Landroid/app/enterprise/lso/LSOInterface;

    invoke-virtual {v0, p1}, Landroid/app/enterprise/lso/LSOInterface;->setWallpaper(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
