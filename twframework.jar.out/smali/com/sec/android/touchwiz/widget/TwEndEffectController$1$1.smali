.class Lcom/sec/android/touchwiz/widget/TwEndEffectController$1$1;
.super Ljava/lang/Object;
.source "TwEndEffectController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwEndEffectController$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/touchwiz/widget/TwEndEffectController$1;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwEndEffectController$1;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController$1$1;->this$1:Lcom/sec/android/touchwiz/widget/TwEndEffectController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwEndEffectController$1$1;->this$1:Lcom/sec/android/touchwiz/widget/TwEndEffectController$1;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwEndEffectController$1;->this$0:Lcom/sec/android/touchwiz/widget/TwEndEffectController;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwEndEffectController;->mTextShakeAnimStatus:I
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwEndEffectController;->access$102(Lcom/sec/android/touchwiz/widget/TwEndEffectController;I)I

    .line 246
    return-void
.end method
