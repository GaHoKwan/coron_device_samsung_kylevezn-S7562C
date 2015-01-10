.class Lcom/android/contacts/list/ContactTileView$2;
.super Ljava/lang/Object;
.source "ContactTileView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactTileView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactTileView;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactTileView;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileView$2;->this$0:Lcom/android/contacts/list/ContactTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView$2;->this$0:Lcom/android/contacts/list/ContactTileView;

    #getter for: Lcom/android/contacts/list/ContactTileView;->mListener:Lcom/android/contacts/list/ContactTileView$Listener;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileView;->access$000(Lcom/android/contacts/list/ContactTileView;)Lcom/android/contacts/list/ContactTileView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 147
    const-string v0, "kitty"

    const-string v1, " contactView onkey "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView$2;->this$0:Lcom/android/contacts/list/ContactTileView;

    #getter for: Lcom/android/contacts/list/ContactTileView;->mListener:Lcom/android/contacts/list/ContactTileView$Listener;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileView;->access$000(Lcom/android/contacts/list/ContactTileView;)Lcom/android/contacts/list/ContactTileView$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView$2;->this$0:Lcom/android/contacts/list/ContactTileView;

    invoke-interface {v0, v1, p2, p3}, Lcom/android/contacts/list/ContactTileView$Listener;->onkey(Lcom/android/contacts/list/ContactTileView;ILandroid/view/KeyEvent;)Z

    .line 149
    const/4 v0, 0x1

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
