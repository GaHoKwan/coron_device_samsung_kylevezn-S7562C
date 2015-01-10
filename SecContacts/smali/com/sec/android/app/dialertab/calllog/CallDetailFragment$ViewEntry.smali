.class final Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;
.super Ljava/lang/Object;
.source "CallDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewEntry"
.end annotation


# instance fields
.field public chatonCallDescription:Ljava/lang/String;

.field public chatonCallIcon:I

.field public chatonCallIntent:Landroid/content/Intent;

.field public chatonMsgDescription:Ljava/lang/String;

.field public chatonMsgIcon:I

.field public chatonMsgIntent:Landroid/content/Intent;

.field public chatonVTDescription:Ljava/lang/String;

.field public chatonVTIcon:I

.field public chatonVTIntent:Landroid/content/Intent;

.field public label:Ljava/lang/CharSequence;

.field public final primaryDescription:Ljava/lang/String;

.field public final primaryIntent:Landroid/content/Intent;

.field public quanternaryDescription:Ljava/lang/String;

.field public quanternaryIcon:I

.field public quanternaryIntent:Landroid/content/Intent;

.field public quinticDescription:Ljava/lang/String;

.field public secondaryDescription:Ljava/lang/String;

.field public secondaryIcon:I

.field public secondaryIntent:Landroid/content/Intent;

.field public sexticDescription:Ljava/lang/String;

.field public sim2CallDescription:Ljava/lang/String;

.field public sim2CallIcon:I

.field public sim2CallIntent:Landroid/content/Intent;

.field public tertiaryDescription:Ljava/lang/String;

.field public tertiaryIcon:I

.field public tertiaryIntent:Landroid/content/Intent;

.field public final text:Ljava/lang/String;

.field public viewContactDescription:Ljava/lang/String;

.field public viewContactIcon:I

.field public viewContactIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .parameter "text"
    .parameter "intent"
    .parameter "description"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1412
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->label:Ljava/lang/CharSequence;

    .line 1414
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->secondaryIcon:I

    .line 1416
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 1418
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->secondaryDescription:Ljava/lang/String;

    .line 1419
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->tertiaryIcon:I

    .line 1420
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->tertiaryIntent:Landroid/content/Intent;

    .line 1421
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->tertiaryDescription:Ljava/lang/String;

    .line 1422
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->quanternaryIcon:I

    .line 1423
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->quanternaryIntent:Landroid/content/Intent;

    .line 1424
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->quanternaryDescription:Ljava/lang/String;

    .line 1425
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->quinticDescription:Ljava/lang/String;

    .line 1426
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->sexticDescription:Ljava/lang/String;

    .line 1428
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->sim2CallIcon:I

    .line 1429
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->sim2CallIntent:Landroid/content/Intent;

    .line 1430
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->sim2CallDescription:Ljava/lang/String;

    .line 1433
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonMsgIcon:I

    .line 1434
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonMsgIntent:Landroid/content/Intent;

    .line 1435
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonMsgDescription:Ljava/lang/String;

    .line 1437
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonCallIcon:I

    .line 1438
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonCallIntent:Landroid/content/Intent;

    .line 1439
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonCallDescription:Ljava/lang/String;

    .line 1441
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonVTIcon:I

    .line 1442
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonVTIntent:Landroid/content/Intent;

    .line 1443
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonVTDescription:Ljava/lang/String;

    .line 1446
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->viewContactIcon:I

    .line 1447
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->viewContactIntent:Landroid/content/Intent;

    .line 1448
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->viewContactDescription:Ljava/lang/String;

    .line 1452
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->text:Ljava/lang/String;

    .line 1453
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->primaryIntent:Landroid/content/Intent;

    .line 1454
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->primaryDescription:Ljava/lang/String;

    .line 1455
    return-void
.end method


# virtual methods
.method public setChatOnCallAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter "intent"
    .parameter "description"

    .prologue
    .line 1484
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonCallIntent:Landroid/content/Intent;

    .line 1485
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonCallDescription:Ljava/lang/String;

    .line 1486
    return-void
.end method

.method public setChatOnMsgAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter "intent"
    .parameter "description"

    .prologue
    .line 1479
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonMsgIntent:Landroid/content/Intent;

    .line 1480
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonMsgDescription:Ljava/lang/String;

    .line 1481
    return-void
.end method

.method public setChatOnVTAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter "intent"
    .parameter "description"

    .prologue
    .line 1489
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonVTIntent:Landroid/content/Intent;

    .line 1490
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->chatonVTDescription:Ljava/lang/String;

    .line 1491
    return-void
.end method

.method public setQuanternaryAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter "intent"
    .parameter "description"

    .prologue
    .line 1465
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->quanternaryIntent:Landroid/content/Intent;

    .line 1466
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->quanternaryDescription:Ljava/lang/String;

    .line 1467
    return-void
.end method

.method public setQuinticAction(Ljava/lang/String;)V
    .locals 0
    .parameter "mNumber"

    .prologue
    .line 1469
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->quinticDescription:Ljava/lang/String;

    .line 1470
    return-void
.end method

.method public setSecondaryAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter "intent"
    .parameter "description"

    .prologue
    .line 1457
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 1458
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->secondaryDescription:Ljava/lang/String;

    .line 1459
    return-void
.end method

.method public setSexticAction(Ljava/lang/String;)V
    .locals 0
    .parameter "mNumber"

    .prologue
    .line 1476
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->sexticDescription:Ljava/lang/String;

    .line 1477
    return-void
.end method

.method public setSim2CallAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter "intent"
    .parameter "description"

    .prologue
    .line 1472
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->sim2CallIntent:Landroid/content/Intent;

    .line 1473
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->sim2CallDescription:Ljava/lang/String;

    .line 1474
    return-void
.end method

.method public setTertiaryAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter "intent"
    .parameter "description"

    .prologue
    .line 1461
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->tertiaryIntent:Landroid/content/Intent;

    .line 1462
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->tertiaryDescription:Ljava/lang/String;

    .line 1463
    return-void
.end method

.method public setViewContactAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter "intent"
    .parameter "description"

    .prologue
    .line 1494
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->viewContactIntent:Landroid/content/Intent;

    .line 1495
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->viewContactDescription:Ljava/lang/String;

    .line 1496
    return-void
.end method
