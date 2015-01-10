.class Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;
.super Ljava/lang/Object;
.source "SpeedDialListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setItemLayout(Landroid/database/Cursor;Landroid/net/Uri;Landroid/view/View;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

.field final synthetic val$nameView:Landroid/widget/TextView;

.field final synthetic val$photoView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 899
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    iput-object p2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;->val$nameView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;->val$photoView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x4

    .line 901
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 902
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 903
    .local v2, position:I
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 906
    .local v1, parentItem:Landroid/view/View;
    const v3, 0x7f090332

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 911
    .local v0, itemNumTextView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    #getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$000(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    if-eqz v0, :cond_0

    .line 913
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 915
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;->val$nameView:Landroid/widget/TextView;

    const v4, 0x7f0d0351

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 916
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;->val$photoView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 924
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$1;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    #calls: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->updateDoneButtonStatus()V
    invoke-static {v3}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$100(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)V

    .line 925
    return-void
.end method
