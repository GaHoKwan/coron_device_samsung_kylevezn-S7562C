.class Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener$1;
.super Ljava/lang/Object;
.source "CallDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener$1;->this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 230
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener$1;->this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ProximitySensorListener;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mCallDetailView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090061

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 231
    .local v0, blankView:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    return-void
.end method
