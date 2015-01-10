.class Lcom/android/contacts/activities/PeopleActivity$4;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 4033
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$4;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4036
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$4;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #calls: Lcom/android/contacts/activities/PeopleActivity;->startSubscriberInfoChecker()V
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$3100(Lcom/android/contacts/activities/PeopleActivity;)V

    .line 4037
    return-void
.end method
