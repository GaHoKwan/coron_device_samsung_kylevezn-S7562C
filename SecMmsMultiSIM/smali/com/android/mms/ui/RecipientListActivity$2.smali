.class Lcom/android/mms/ui/RecipientListActivity$2;
.super Ljava/lang/Object;
.source "RecipientListActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/RecipientListActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RecipientListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RecipientListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/mms/ui/RecipientListActivity$2;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "arg0"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x42

    if-eq p2, v2, :cond_0

    const/16 v2, 0x17

    if-ne p2, v2, :cond_1

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity$2;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    #getter for: Lcom/android/mms/ui/RecipientListActivity;->list:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/mms/ui/RecipientListActivity;->access$100(Lcom/android/mms/ui/RecipientListActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 122
    .local v0, position:I
    if-ltz v0, :cond_1

    .line 124
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity$2;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    #getter for: Lcom/android/mms/ui/RecipientListActivity;->mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/RecipientListActivity;->access$000(Lcom/android/mms/ui/RecipientListActivity;)Lcom/android/mms/ui/RecipientListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/RecipientListAdapter;->onSelectItem(I)V

    .line 125
    const/4 v1, 0x1

    .line 130
    .end local v0           #position:I
    :cond_1
    return v1
.end method
