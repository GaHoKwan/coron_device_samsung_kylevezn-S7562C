.class final Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;
.super Ljava/lang/Object;
.source "InteractionGroupSelectionActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InteractionGroupMemberPickerActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 519
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)V

    return-void
.end method


# virtual methods
.method public onAllDataDeleted()V
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->setDoneButtonClickable(Z)V

    .line 621
    return-void
.end method

.method public onInteractionPickerAction(Landroid/net/Uri;)V
    .locals 1
    .parameter "dataUri"

    .prologue
    .line 593
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->returnPickPhoneResult(Landroid/net/Uri;)V

    .line 594
    return-void
.end method

.method public onOneDataInputed()V
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->setDoneButtonClickable(Z)V

    .line 626
    return-void
.end method

.method public onPickContactAction(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 600
    .local p1, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onPickDataAction(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 616
    .local p1, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onPickGroupDataAction(Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 631
    .local p1, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "toolitem"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 632
    .local v0, toolItem:I
    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_1

    .line 636
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->sendActionIntent(Ljava/util/HashMap;)V

    .line 641
    :goto_0
    return-void

    .line 639
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->returnPickerResult(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public onPickSpeedDialAction(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 647
    return-void
.end method

.method public onPickSpeedDialAction(Landroid/net/Uri;J)V
    .locals 0
    .parameter "uri"
    .parameter "dataid"

    .prologue
    .line 653
    return-void
.end method

.method public onRecentListAction(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 610
    return-void
.end method

.method public onSelected(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 657
    const-string v0, "InteractionGroupSelectionActivity"

    const-string v1, "onSelected"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    #setter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectedCount:I
    invoke-static {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$102(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;I)I

    .line 659
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectedCount:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mDoneButtonClickable:Z
    invoke-static {v1, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$202(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;Z)Z

    .line 660
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mIsTablet:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$500(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mSelectedCount:I
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)I

    move-result v2

    #calls: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->actionbarTitle(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$400(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mDoneButtonClickable:Z
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$200(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->setDoneButtonClickable(Z)V

    .line 664
    return-void

    .line 659
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
