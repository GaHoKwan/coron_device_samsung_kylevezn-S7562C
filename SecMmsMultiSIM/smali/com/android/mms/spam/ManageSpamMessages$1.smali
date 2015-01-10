.class Lcom/android/mms/spam/ManageSpamMessages$1;
.super Ljava/lang/Object;
.source "ManageSpamMessages.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/ManageSpamMessages;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/ManageSpamMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/ManageSpamMessages;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/mms/spam/ManageSpamMessages$1;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    .line 260
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 261
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$1;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->mMode:I
    invoke-static {v0}, Lcom/android/mms/spam/ManageSpamMessages;->access$000(Lcom/android/mms/spam/ManageSpamMessages;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$1;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #getter for: Lcom/android/mms/spam/ManageSpamMessages;->mSpamList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/spam/ManageSpamMessages;->access$100(Lcom/android/mms/spam/ManageSpamMessages;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0231

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 265
    const/4 v0, 0x1

    .line 269
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
