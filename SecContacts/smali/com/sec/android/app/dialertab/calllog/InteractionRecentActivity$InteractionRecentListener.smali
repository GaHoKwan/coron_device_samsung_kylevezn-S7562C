.class final Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity$InteractionRecentListener;
.super Ljava/lang/Object;
.source "InteractionRecentActivity.java"

# interfaces
.implements Lcom/sec/android/app/dialertab/calllog/OnRecentListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InteractionRecentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity$InteractionRecentListener;->this$0:Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity$InteractionRecentListener;-><init>(Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;)V

    return-void
.end method


# virtual methods
.method public onAllDataDeleted()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity$InteractionRecentListener;->this$0:Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;->mMenuDone:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 61
    return-void
.end method

.method public onOneDataInputed()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity$InteractionRecentListener;->this$0:Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;

    #getter for: Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;->mMenuDone:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 57
    return-void
.end method

.method public onRecentListAction(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity$InteractionRecentListener;->this$0:Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity$InteractionRecentListener;->this$0:Lcom/sec/android/app/dialertab/calllog/InteractionRecentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 53
    return-void
.end method
