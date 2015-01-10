.class Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GroupChangeOrderListFragment.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwDndController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReOrderListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;",
        ">;",
        "Lcom/sec/android/touchwiz/widget/TwDndController;"
    }
.end annotation


# instance fields
.field private mLayoutId:I

.field final synthetic this$0:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "layoutId"

    .prologue
    .line 297
    .local p0, this:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;,"Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter<TT;>;"
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->this$0:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    .line 298
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 299
    iput p3, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->mLayoutId:I

    .line 300
    return-void
.end method


# virtual methods
.method public allowDrag(I)Z
    .locals 1
    .parameter "startPos"

    .prologue
    .line 332
    .local p0, this:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;,"Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public allowDrop(II)Z
    .locals 1
    .parameter "startPos"
    .parameter "destPos"

    .prologue
    .line 337
    .local p0, this:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;,"Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public dropDone(II)V
    .locals 2
    .parameter "startPos"
    .parameter "destPos"

    .prologue
    .line 341
    .local p0, this:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;,"Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;

    .line 347
    .local v0, draggedObj:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->setNotifyOnChange(Z)V

    .line 349
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->remove(Ljava/lang/Object;)V

    .line 354
    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->insert(Ljava/lang/Object;I)V

    .line 356
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->notifyDataSetChanged()V

    .line 357
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->this$0:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    #calls: Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->updateDoneButton()V
    invoke-static {v1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->access$200(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;)V

    .line 358
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 303
    .local p0, this:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;,"Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter<TT;>;"
    const/4 v0, 0x0

    .line 304
    .local v0, holder:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ViewHolder;
    if-nez p2, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->mLayoutId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 306
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ViewHolder;

    .end local v0           #holder:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ViewHolder;
    invoke-direct {v0, p2}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ViewHolder;-><init>(Landroid/view/View;)V

    .line 307
    .restart local v0       #holder:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 312
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;

    .line 313
    .local v1, item:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;
    if-eqz v1, :cond_0

    .line 314
    iget-object v2, v1, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;->systemId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;->systemId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 315
    iget-object v2, v0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;->systemId:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 327
    :cond_0
    :goto_1
    return-object p2

    .line 309
    .end local v1           #item:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ViewHolder;
    check-cast v0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ViewHolder;

    .restart local v0       #holder:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ViewHolder;
    goto :goto_0

    .line 316
    .restart local v1       #item:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;
    :cond_2
    const-string v2, "ICE"

    iget-object v3, v1, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 317
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldChangeEmergencyText()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 318
    iget-object v2, v0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ViewHolder;->title:Landroid/widget/TextView;

    const v3, 0x7f0d0285

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 321
    :cond_3
    iget-object v2, v0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ViewHolder;->title:Landroid/widget/TextView;

    const v3, 0x7f0d0284

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 324
    :cond_4
    iget-object v2, v0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
