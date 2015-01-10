.class Lcom/android/contacts/list/ContactTileListFragment$6;
.super Ljava/lang/Object;
.source "ContactTileListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactTileListFragment;->configureCustomActionBarAtBottom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactTileListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactTileListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 721
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment$6;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 724
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$6;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #calls: Lcom/android/contacts/list/ContactTileListFragment;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    invoke-static {v1, p1}, Lcom/android/contacts/list/ContactTileListFragment;->access$1000(Lcom/android/contacts/list/ContactTileListFragment;Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v0

    .line 725
    .local v0, popup:Landroid/widget/PopupMenu;
    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 728
    :cond_0
    return-void
.end method
