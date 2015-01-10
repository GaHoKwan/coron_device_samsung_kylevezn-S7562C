.class Lcom/android/mms/ui/RecipientListAdapter$2;
.super Ljava/lang/Object;
.source "RecipientListAdapter.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RecipientListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/mms/ui/RecipientListAdapter$2;->this$0:Lcom/android/mms/ui/RecipientListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "keyCode"
    .parameter "arg2"

    .prologue
    .line 117
    sparse-switch p2, :sswitch_data_0

    .line 122
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 120
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 117
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
