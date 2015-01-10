.class Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$4;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 3953
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$4;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    .line 3956
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$4;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v2, v2, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3988
    :cond_0
    :goto_0
    return-void

    .line 3957
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    .line 3958
    .local v1, entry:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 3960
    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 3962
    .local v0, detailViewEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    const-string v2, "vnd.android.cursor.item/phone_v2"

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1400()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3966
    :cond_2
    const-string v2, "vnd.android.cursor.item/sip_address"

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1500()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3978
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$4;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v2, v2, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->click(Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V

    .line 3980
    const-string v2, "vnd.android.cursor.item/phone_v2"

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3981
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1402(Z)Z

    .line 3984
    :cond_4
    const-string v2, "vnd.android.cursor.item/sip_address"

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3985
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$4;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v2, v2, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v2, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->hideSoftKeyboard(Landroid/view/View;)V

    .line 3986
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1502(Z)Z

    goto :goto_0
.end method
