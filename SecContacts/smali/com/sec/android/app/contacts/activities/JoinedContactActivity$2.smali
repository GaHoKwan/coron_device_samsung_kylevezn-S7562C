.class Lcom/sec/android/app/contacts/activities/JoinedContactActivity$2;
.super Ljava/lang/Object;
.source "JoinedContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->setCustomActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/JoinedContactActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/JoinedContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/JoinedContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/JoinedContactActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->onBackPressed()V

    .line 134
    return-void
.end method
