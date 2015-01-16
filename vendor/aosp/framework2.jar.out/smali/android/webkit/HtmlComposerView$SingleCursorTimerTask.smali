.class public Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;
.super Ljava/util/TimerTask;
.source "HtmlComposerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SingleCursorTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HtmlComposerView;


# direct methods
.method protected constructor <init>(Landroid/webkit/HtmlComposerView;)V
    .locals 0
    .parameter

    .prologue
    .line 5972
    iput-object p1, p0, Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5975
    iget-object v0, p0, Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;->this$0:Landroid/webkit/HtmlComposerView;

    #getter for: Landroid/webkit/HtmlComposerView;->mHiderCursorHandler:Ljava/lang/Runnable;
    invoke-static {v0}, Landroid/webkit/HtmlComposerView;->access$1400(Landroid/webkit/HtmlComposerView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5976
    iget-object v0, p0, Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;->this$0:Landroid/webkit/HtmlComposerView;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;->this$0:Landroid/webkit/HtmlComposerView;

    #getter for: Landroid/webkit/HtmlComposerView;->mHiderCursorHandler:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/webkit/HtmlComposerView;->access$1400(Landroid/webkit/HtmlComposerView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 5978
    :cond_0
    return-void
.end method
