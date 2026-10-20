from setuptools import setup, find_packages

setup(
    name='apiverve_randomidentitygenerator',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Random Identity Generator creates synthetic user profiles with realistic names, usernames, email addresses, phone numbers, and gender attributes. Paid plans add batch generation, birthdates, company details, and AI-generated avatars.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/randomidentitygenerator?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
