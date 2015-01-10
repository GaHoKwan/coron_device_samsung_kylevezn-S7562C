.class Lcom/android/contacts/group/GroupBrowseListFragment$6;
.super Ljava/lang/Object;
.source "GroupBrowseListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupBrowseListFragment;->configureCustomActionBarAtBottom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1914
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$6;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$6;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #calls: Lcom/android/contacts/group/GroupBrowseListFragment;->constructPopupMenu(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$2700(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/view/View;)V

    .line 1918
    return-void
.end method
