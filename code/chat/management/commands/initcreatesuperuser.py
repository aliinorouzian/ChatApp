from django.core.management.base import BaseCommand
from django.contrib.auth import get_user_model


class Command(BaseCommand):

    def handle(self, *args, **options):
        if get_user_model().objects.count() == 0:
            user = get_user_model()
            user.objects.create_superuser('admin', 'admin@admin.dev', 'admin')
            user.objects.create_superuser('ehsan', 'ehsan@admin.dev', 'admin')

        else:
            print(
                '_Developer > Admin accounts can only be initialized if no Accounts exist')
