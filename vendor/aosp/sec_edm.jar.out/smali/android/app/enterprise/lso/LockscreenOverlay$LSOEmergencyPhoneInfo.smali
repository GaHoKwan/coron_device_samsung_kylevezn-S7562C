.class public Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;
.super Ljava/lang/Object;
.source "LockscreenOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/lso/LockscreenOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LSOEmergencyPhoneInfo"
.end annotation


# instance fields
.field public bottomPosition:I

.field public gravity:I

.field public icon:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public showBackground:Z

.field public showDefaultText:Z

.field public text:Ljava/lang/String;

.field public topPosition:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "phoneNumber"

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    invoke-virtual {p0}, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->init()V

    .line 333
    iput-object p1, p0, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->phoneNumber:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .parameter "phoneNumber"
    .parameter "topPos"
    .parameter "iconFilepath"
    .parameter "bottomPos"

    .prologue
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    invoke-virtual {p0}, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->init()V

    .line 371
    iput-object p1, p0, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->phoneNumber:Ljava/lang/String;

    .line 372
    iput p2, p0, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    .line 373
    iput p4, p0, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    .line 374
    iput-object p3, p0, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->icon:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "phoneNumber"
    .parameter "iconFilepath"

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    invoke-virtual {p0}, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->init()V

    .line 349
    iput-object p1, p0, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->phoneNumber:Ljava/lang/String;

    .line 350
    iput-object p2, p0, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->icon:Ljava/lang/String;

    .line 351
    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 383
    iput-object v2, p0, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->phoneNumber:Ljava/lang/String;

    .line 384
    iput v1, p0, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    .line 385
    const/16 v0, 0x64

    iput v0, p0, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    .line 386
    iput-object v2, p0, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->icon:Ljava/lang/String;

    .line 387
    const/16 v0, 0x11

    iput v0, p0, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->gravity:I

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->showBackground:Z

    .line 389
    iput-boolean v1, p0, Landroid/app/enterprise/lso/LockscreenOverlay$LSOEmergencyPhoneInfo;->showDefaultText:Z

    .line 390
    return-void
.end method
