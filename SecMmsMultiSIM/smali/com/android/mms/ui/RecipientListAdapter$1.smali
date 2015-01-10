.class Lcom/android/mms/ui/RecipientListAdapter$1;
.super Ljava/lang/Object;
.source "RecipientListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/RecipientListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RecipientListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RecipientListAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/mms/ui/RecipientListAdapter$1;->this$0:Lcom/android/mms/ui/RecipientListAdapter;

    iput p2, p0, Lcom/android/mms/ui/RecipientListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListAdapter$1;->this$0:Lcom/android/mms/ui/RecipientListAdapter;

    iget v1, p0, Lcom/android/mms/ui/RecipientListAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientListAdapter;->onSelectItem(I)V

    .line 111
    return-void
.end method
