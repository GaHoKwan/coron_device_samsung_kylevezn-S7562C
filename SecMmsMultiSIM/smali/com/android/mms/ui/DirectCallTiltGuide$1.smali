.class Lcom/android/mms/ui/DirectCallTiltGuide$1;
.super Ljava/lang/Object;
.source "DirectCallTiltGuide.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DirectCallTiltGuide;->motionDialogInitialOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DirectCallTiltGuide;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DirectCallTiltGuide;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/mms/ui/DirectCallTiltGuide$1;->this$0:Lcom/android/mms/ui/DirectCallTiltGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/mms/ui/DirectCallTiltGuide$1;->this$0:Lcom/android/mms/ui/DirectCallTiltGuide;

    iget-object v0, v0, Lcom/android/mms/ui/DirectCallTiltGuide;->mTiltPopupAni:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 67
    return-void
.end method