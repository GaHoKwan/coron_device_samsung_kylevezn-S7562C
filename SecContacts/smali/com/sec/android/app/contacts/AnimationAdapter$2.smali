.class Lcom/sec/android/app/contacts/AnimationAdapter$2;
.super Ljava/lang/Object;
.source "AnimationAdapter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/AnimationAdapter;->startAnimation()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/AnimationAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/AnimationAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/sec/android/app/contacts/AnimationAdapter$2;->this$0:Lcom/sec/android/app/contacts/AnimationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sec/android/app/contacts/AnimationAdapter$2;->this$0:Lcom/sec/android/app/contacts/AnimationAdapter;

    #getter for: Lcom/sec/android/app/contacts/AnimationAdapter;->mWindow:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/contacts/AnimationAdapter;->access$100(Lcom/sec/android/app/contacts/AnimationAdapter;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 288
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 285
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 284
    return-void
.end method
