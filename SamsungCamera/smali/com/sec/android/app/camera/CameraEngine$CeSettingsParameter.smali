.class public Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;
.super Ljava/lang/Object;
.source "CameraEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CeSettingsParameter"
.end annotation


# instance fields
.field private mKey:I

.field private mValue:I

.field final synthetic this$0:Lcom/sec/android/app/camera/CameraEngine;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CameraEngine;II)V
    .locals 0
    .parameter
    .parameter "key"
    .parameter "value"

    .prologue
    .line 389
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput p2, p0, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->mKey:I

    .line 391
    iput p3, p0, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->mValue:I

    .line 392
    return-void
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->mKey:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->mValue:I

    return v0
.end method
