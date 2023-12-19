import os
import dotenv
from pathlib import Path

from django.core.wsgi import get_wsgi_application

BASE_DIR = Path(__file__).resolve().parent.parent
ENV_PATH = BASE_DIR / ".env"

dotenv.read_dotenv(str(ENV_PATH))

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "docker.settings")

application = get_wsgi_application()
